class Api::SessionsController < Devise::SessionsController
  def destroy
    super
  end
end
