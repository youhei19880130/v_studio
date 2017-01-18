# frozen_string_literal: true
class AdminController < ApplicationController
  http_basic_authenticate_with name: 'studio_adm0801', password: 'kensaku_pass0801'

  def index
  end
end
