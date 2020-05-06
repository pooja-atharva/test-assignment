class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
   
  def reminder_email(user, show)
    @user = user
    @show  = show
    mail(to: @user.email, subject: 'Reminder for your favorite shows !!')
  end
end
