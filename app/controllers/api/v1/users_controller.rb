# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApiController
      def show
        render json: user, serializer: UsersSerializer
      end

      def request_donations
        render json: user.requests, each_serializer: DonationsSerializer
      end

      def offer_donations
        render json: user.offers, each_serializer: DonationsSerializer
      end

      def nearby_users
        render json: user.nearbys(10, unit: :km), each_serializer: UsersSerializer
      end

      private

      def user
        User.find(params[:id])
      end
    end
  end
end
