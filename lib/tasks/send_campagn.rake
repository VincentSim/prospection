task send_campagn: :environment do
   User.all.shuffle[0..9].each do |user|
    user.contacted_one = Time.now
    user.save
    user.send_welcome_email
  end
end