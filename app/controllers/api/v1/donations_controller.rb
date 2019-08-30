# frozen_string_literal: true

module Api
  module V1
    class DonationsController < ApiController
      def index
        render_paginated Donation.all, each_serializer: DonationsSerializer
      end
    end
  end
end
