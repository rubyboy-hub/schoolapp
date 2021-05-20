class UserMailer < ApplicationMailer
    default from: 'odrtest555@gmail.com'

    def welcome_email
      @user = params[:user]
      @url  = 'http://localhost:3000/users/login'
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
