# frozen_string_literal: true
class Room < ApplicationRecord
  belongs_to :studio

  enum floor: { flooring: 1, linoleum: 2 }
  enum speaker: { false: 0, true: 1 }
  enum mixer: { false: 0, true: 1 }
  enum cd: { false: 0, true: 1 }
  enum md: { false: 0, true: 1 }
  enum mp3: { false: 0, true: 1 }
  enum dimmable: { false: 0, true: 1 }
  enum wifi: { false: 0, true: 1 }
end
