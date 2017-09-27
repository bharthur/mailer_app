module EmailsHelper
  
  def check_for_error(field=nil)
    error = (@email.errors.messages[field] || []).to_sentence
    error.present? ? error : ''
  end

end
