# frozen_string_literal: true
class Studio < ApplicationRecord
  belongs_to :account
  belongs_to :area
  has_many :rooms

  enum late_night: { false: 0, true: 1 }
  enum locker_room: { false: 0, true: 1 }
  enum parking: { false: 0, true: 1 }
end
