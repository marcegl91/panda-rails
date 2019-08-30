# frozen_string_literal: true

module Api
  module V1
    class CategoriesController < ApiController
      def index
        render_paginated Category.all, each_serializer: CategoriesSerializer
      end
    end
  end
end
