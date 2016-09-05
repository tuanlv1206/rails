class EmailJob < ApplicationJob
  queue_as :email

  def perform(email)
    # Do something later
    UserMailer.registration_confirmation(email).deliver_now
  end
end
