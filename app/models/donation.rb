# frozen_string_literal: true

class Donation < ApplicationRecord
  belongs_to :requester, optional: true, class_name: 'User', foreign_key: 'requester_id'
  belongs_to :offerer, optional: true, class_name: 'User', foreign_key: 'offerer_id'

  enum state: %w[unsolicited in_progress delivered]
end
