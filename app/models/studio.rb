# frozen_string_literal: true
class Studio < ApplicationRecord
  # belongs_to :account
  belongs_to :area
  has_many :rooms

  scope :active, -> { where(status: Studio.statuses[:active]) }
  scope :by_area, ->(area) { where(area_id: area) if area.present? }
  scope :by_people, lambda { |people|
    select do |s|
      case people
      when 1..3
        (people * 5).between?(s.min_capacity, s.max_capacity)
      when 4
        s.max_capacity > 20
      else
        true
      end
    end
  }
  scope :by_late_night, ->(late_night) { where(late_night: late_night) if late_night.present? }
  scope :by_locker_room, ->(locker_room) { where(locker_room: locker_room) if locker_room.present? }
  scope :by_parking, ->(parking) { where(parking: parking) if parking.present? }

  enum status: { inactive: 0, active: 1 }

  def max_capacity
    rooms.maximum(:capacity)
  end

  def min_capacity
    rooms.minimum(:capacity)
  end
end
