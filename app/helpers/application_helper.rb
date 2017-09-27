module ApplicationHelper
  
  def bootstrap_class_for(flash_type)
    case flash_type.to_sym
      when :success
        "alert-success"
      when :error
        "alert-danger"
      else
        flash_type.to_s
    end
  end

end
