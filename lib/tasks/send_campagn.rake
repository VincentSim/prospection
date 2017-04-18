task send_campagn: :environment do
   User.select{|u| u.contacted == false}.shuffle[0..249].each do |user|
    user.contacted_one = Time.now
    user.contacted = true
    user.save
    user.send_welcome_email
  end
end