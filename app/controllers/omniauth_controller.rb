class OmniauthController < Devise::OmniauthCallbacksController

  layout false

  skip_authorization_check

  def facebook
    render json: info
  end

  private

  def info
    @info ||= request.env["omniauth.auth"]
  end

end
