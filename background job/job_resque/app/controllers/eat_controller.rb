class EatController < ApplicationController
  def food
    EatJob.set(wait: 10.seconds).perform_later(params[:food])
    render :text => "Put in fridge to eat later."
  end
end
