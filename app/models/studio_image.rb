class StudioImage < ApplicationRecord
  mount_uploader :url, StudioImageUploader

  belongs_to :studio, optional: true
end
