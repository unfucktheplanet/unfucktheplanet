class OmniauthController < Devise::OmniauthCallbacksController

  layout false

  skip_authorization_check

  def facebook
    @user = User.where(auth_provider: 'facebook', auth_uid: auth.uid).first

    if @user.nil?
      @user = User.new
      @user.auth_provider = 'facebook'
      @user.auth_uid      = auth.uid
      @user.auth_token    = auth.credentials.token
      @user.save!
    end

    sign_in @user
  end

  private

  def auth
    @auth ||= request.env["omniauth.auth"]
  end

end
