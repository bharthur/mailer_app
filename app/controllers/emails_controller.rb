class EmailsController < ApplicationController
  
  def index
    @email = Email.new
    if request.post?
      @email = Email.new(email_params)
      if @email.valid?
          EmailMailer.send_email(@email).deliver
          flash[:success] = "Email was successfully sent to #{@email.to}!"
          redirect_to "/"
      else
        flash[:error] = "Please correct the following errors and re-submit!"
        render 'index'
      end
    end
  end

  private

  def email_params
    params.require(:email).permit(:to, :subject, :body)
  end

end
