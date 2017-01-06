# frozen_string_literal: true
class Room < ApplicationRecord
  belongs_to :studio

  scope :displayed, -> { where(status: Room.statuses[:active]) }

  enum status: { inactive: 0, active: 1 }
  enum floor: { 'フローリング': 1, 'リノリウム': 2, 'その他': 99 }
end
