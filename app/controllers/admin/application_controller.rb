# frozen_string_literal: true
class Admin::ApplicationController < ApplicationController
  protect_from_forgery with: :exception

  http_basic_authenticate_with name: 'studio_adm0801', password: 'kensaku_pass0801'
end
