# frozen_string_literal: true

module Api
  module V1
    class DonationsController < ApiController
      # before_action :authenticate_user!

      def index
        render_paginated Donation.all, each_serializer: DonationsSerializer
      end

      def create
        donation = Donation.new(donation_params)
        unless donation.save
          head :bad_request
          return
        end

        render json: donation, status: :created, serializer: DonationsSerializer
      end

      def show
        render json: Donation.find(params[:id]), serializer: DonationsSerializer
      end

      private

      def donation_params
        params.require(:donation).permit(:name, :description, :photo, :state,
                                         :requester_id, :offerer_id)
      end
    end
  end
end
