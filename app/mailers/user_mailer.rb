class UserMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'

  def signup(user)
    @user = user
    mail(to: @user.email, subject: "welcome!")
  end

end
