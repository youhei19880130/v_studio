# frozen_string_literal: true
class Studio < ApplicationRecord
  belongs_to :account
  belongs_to :area
  has_many :rooms
end
