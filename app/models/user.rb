class User < ApplicationRecord

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
