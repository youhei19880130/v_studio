# frozen_string_literal: true
module Admin
  class ApplicationController < ApplicationController
    protect_from_forgery with: :exception

    http_basic_authenticate_with name: 'studio_adm0801', password: 'kensaku_pass0801' if Rails.env.production?
  end
end
