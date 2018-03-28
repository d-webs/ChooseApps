class Api::SessionsController < Devise::SessionsController
  def new
    redirect_to user_linkedin_omniauth_authorize_path
  end

  def destroy
    super
  end
end
