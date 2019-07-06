class RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def create
    user = User.where(email: params[:email]).first

    if user&.user.valid_password?(params[:password])
      render json: user.as_json(only: [:id, :email]), status: :created  
    else
      head :unauthorized
    end
  end
 
  private
 
  def sign_up_params
    allow = [:email, :password, :password_confirmation, :cpf, [company_attributes: [:cnpj]]
    params.require(resource_name).permit(allow)
  end
 
end