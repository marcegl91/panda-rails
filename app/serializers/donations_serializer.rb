# frozen_string_literal: true

class DonationsSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo, :requester_id, :offerer_id
end
