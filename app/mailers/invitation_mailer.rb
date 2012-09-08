class InvitationMailer < ActionMailer::Base
  
  default from: "\"UnFuckThePlanet\" <contact@UnFuckThePlanet.com>"
  
  def invitation_email(invite_token, email)
    @link = "http://UnFuckThePlanet.com/activate/#{verification}"
    mail(
      :to => email, 
      :subject => "Invitation",
      :tag => "invitation"
      )
  end
  
end