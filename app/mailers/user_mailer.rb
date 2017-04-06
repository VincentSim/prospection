class UserMailer < ApplicationMailer

  def welcome(id)
    @user = User.find(id)

    mail to:@user.email, subject:"we need you bro!"
  end

end