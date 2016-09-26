class UserMailer < ApplicationMailer
 
  def welcome(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to NunnyApp4u')
  end
end
