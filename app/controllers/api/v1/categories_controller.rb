# frozen_string_literal: true

module Api
  module V1
    class CategoriesController < ApiController
      def index
        render_paginated Category.all, each_serializer: CategoriesSerializer
      end

      def nearby_request_donations
        donations = Donation.where(category: category).where(requester_id: nearby_users.map(&:id))

        render json: donations, each_serializer: DonationsSerializer
      end

      def nearby_offer_donations
        donations = Donation.where(category: category).where(offerer_id: nearby_users.map(&:id))

        render json: donations, each_serializer: DonationsSerializer
      end

      private

      def category
        Category.find(params[:id])
      end

      def nearby_users
        user = current_user || User.first # TODO: REMOVE
        user.nearbys(10, unit: :km)
      end
    end
  end
end
