# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApiController
      def show
        render json: User.find(params[:id]), serializer: UsersSerializer
      end
    end
  end
end
