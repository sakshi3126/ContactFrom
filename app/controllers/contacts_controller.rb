class ContactsController < ApplicationController
  # protect_from_forgery with: :null_session, only: [:create]
  def contact
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(first_name: params[:first_name],
                           last_name: params[:last_name],
                           email: params[:email],
                           phone_number: params[:phone_number],
                           message: params[:message])
    if @contact.valid?
      @contact.save
      ContactMailer.contact_email(@contact).deliver_now!
      redirect_to root_path
    else
      render json: {error: @contact.errors}, status: 422
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
end
