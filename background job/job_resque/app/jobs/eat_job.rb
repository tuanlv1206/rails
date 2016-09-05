class EatJob < ActiveJob::Base
  queue_as :food
  def perform(food)
    puts "Ate #{food}!"
  end
end
