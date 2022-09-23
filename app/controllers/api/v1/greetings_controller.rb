# frozen_string_literal: true

module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        render json: Greeting.offset(Random.rand(0..4)).first.message
      end
    end
  end
end
