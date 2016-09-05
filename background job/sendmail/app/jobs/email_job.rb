class EmailJob < ActiveJob::Base
  queue_as :email16

  def perform(email)
    # puts "hello worl #{email}"
    UserMailer.registration_confirmation(email).deliver_now
  end
end
