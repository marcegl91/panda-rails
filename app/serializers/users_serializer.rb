# frozen_string_literal: true

class UsersSerializer < ActiveModel::Serializer
    attributes :id, :nickname, :email, :score, :name
end
  