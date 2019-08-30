# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :requests, class_name: 'Donation', foreign_key: 'requester_id'
  has_many :offers, class_name: 'Donation', foreign_key: 'offerer_id'
end
