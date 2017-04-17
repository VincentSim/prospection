class UserMailer < ApplicationMailer

  def welcome(id)
    @user = User.find(id)

    mail to:@user.email, subject:"Etude sur l'Avocat 2.0"
  end

end