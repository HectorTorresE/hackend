class Api::V1::GreetingsController < ApplicationController
  def index
    render json: Greeting.offset(Random.rand(0..4)).first.message
  end
end
