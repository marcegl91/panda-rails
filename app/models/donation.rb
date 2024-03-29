# frozen_string_literal: true

class Donation < ApplicationRecord
  belongs_to :requester, optional: true, class_name: 'User', foreign_key: 'requester_id'
  belongs_to :offerer, optional: true, class_name: 'User', foreign_key: 'offerer_id'

  belongs_to :category

  enum state: %w[unsolicited requested delivered]
end
