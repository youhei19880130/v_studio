# frozen_string_literal: true
class Room < ApplicationRecord
  belongs_to :studio

  enum floor: { 'フローリング': 1, 'リノリウム': 2, '不明': 99 }
end
