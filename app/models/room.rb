# frozen_string_literal: true
class Room < ApplicationRecord
  belongs_to :studio

  enum floor: { flooring: 1, linoleum: 2, unknown: 99 }
end
