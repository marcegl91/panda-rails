# frozen_string_literal: true

module Api
  module V1
    class ApiController < ApplicationController
      include Wor::Paginate

      rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

      private

      def record_not_found
        head :not_found
      end
    end
  end
end
