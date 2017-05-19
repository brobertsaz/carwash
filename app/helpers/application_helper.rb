module ApplicationHelper


  def twitterized_type(type)
    case type.to_sym
    when :errors
        "alert-danger"
    when :alert
        "alert-danger"
    when :error
        "alert-danger"
    when :notice
        "alert-success"
    when :success
        "alert-success"
    when :warning
        "alert-warning"
    else
        "alert-info"
    end
  end
end

