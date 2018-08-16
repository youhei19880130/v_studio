# frozen_string_literal: true
module Admin
  class StudioImagesController < Admin::ApplicationController
    def  upload
      @studio = Studio.friendly.find(params[:studio_id])
      studio_image = @studio.studio_images.build(url: params['file'], studio_id: @studio.id)
      studio_image.save
    end
  end
end
