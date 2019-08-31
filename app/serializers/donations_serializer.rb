# frozen_string_literal: true

class DonationsSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo, :category, :state

  has_one :requester, serializer: UsersSerializer
  has_one :offerer, serializer: UsersSerializer
end
