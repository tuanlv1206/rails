class EatJob < ActiveJob::Base
  queue_as :email
  def perform(email)
    # puts "Ate #{email}!"
    UserMailer.registration_confirmation(email).deliver_now
  end
end
