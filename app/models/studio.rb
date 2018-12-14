# frozen_string_literal: true
class Studio < ApplicationRecord
  include FriendlyId
  friendly_id :slug

  # belongs_to :account
  belongs_to :area
  has_many :studio_images
  has_many :rooms
  accepts_nested_attributes_for :studio_images

  scope :displayed, -> { where(status: Studio.statuses[:active]) }
  scope :by_area, ->(area) { where(area_id: Area.find_by(slug: area).id) if area.present? && area != 'all' }
  scope :by_people, ->(people) {
    return all unless people.present?
    people_range = PeopleRange.find(people)
    candidate_ids = []
    Room.all.each do |r|
      candidate_ids.push(r.studio_id) if r.capacity.between?(people_range.min,people_range.max) && !candidate_ids.include?(r.studio_id)
    end
    Studio.where(id: candidate_ids)
  }
  scope :by_late_night, ->(late_night) { where(late_night: late_night) if late_night.present? }
  scope :by_locker_room, ->(locker_room) { where(locker_room: locker_room) if locker_room.present? }
  scope :by_parking, ->(parking) { where(parking: parking) if parking.present? }
  scope :order_by_room_count, lambda {
    ids = joins(:rooms).group(:id).order('count_studios_id desc').count('studios.id').keys
    Studio.where(id: ids).order(['field(id, ?)', ids])
  }

  enum status: { inactive: 0, active: 1 }
  validates :slug, uniqueness: true

  def max_capacity
    rooms.maximum(:capacity)
  end

  def min_capacity
    rooms.minimum(:capacity)
  end
end
