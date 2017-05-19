class WashesController < ApplicationController
  before_action :vehicle_search, only: :create

  def new
    @wash = Wash.new
  end

  def create
    @wash = @vehicle.washes.create muddy_bed: wash_params[:muddy_bed]
    create_transaction
    if @wash.save
      flash[:success] = "Thanks, your total is #{@total}"
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = "Something horrifically went wrong..."
      redirect_back(fallback_location: root_path)
    end
  end

  def create_transaction
    calculate_total
    SalesTransaction.new wash: @wash, total_amount: @total
  end

  def calculate_total
    total = 0
    if @wash.muddy_bed == '1'
      total += 2
    end

    total += wash_params[:basic_fee].to_i

    if @vehicle.washes.count == 2
      total = total * 0.5
    end
    @total = ActionController::Base.helpers.number_to_currency(total)
  end

  def vehicle_search
    license_plate = wash_params[:vehicle_washes][:vehicle][:license_plate]
    validate_not_stolen(license_plate)

    @vehicle = Vehicle.find_by_license_plate(license_plate)
    unless @vehicle
      @vehicle = Vehicle.create wash_params[:vehicle_washes][:vehicle]
      unless @vehicle.save
        flash[:error] = @vehicle.errors.full_messages.to_sentence
        redirect_back(fallback_location: root_path)
      end
    end
  end

  def validate_not_stolen(plate)
    if plate == '1111111'
      flash[:error] = "Stolen Vehicle, call the cops!!!!!"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def wash_params
    params.require(:wash)
          .permit(:muddy_bed, :basic_fee,
          { vehicle_washes:{ vehicle: [:vehicle_type, :license_plate, :tailgate_up] }})
  end

end
