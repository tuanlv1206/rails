class EmailWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'critical'

  def perform(email)
    # Do something later
    # puts "Hello World!"
    UserMailer.registration_confirmation(email).deliver_now
  end
end
