# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Admin::Areas', type: :request do
  describe 'GET /admin_areas' do
    it 'works! (now write some real specs)' do
      get admin_areas_path
      expect(response).to have_http_status(200)
    end
  end
end
