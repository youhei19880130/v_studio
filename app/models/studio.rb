# frozen_string_literal: true
class Studio < ApplicationRecord
  # belongs_to :account
  belongs_to :area
  has_many :rooms

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

  def max_capacity
    rooms.maximum(:capacity)
  end

  def min_capacity
    rooms.minimum(:capacity)
  end
end
