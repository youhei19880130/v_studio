# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Studios', type: :request do
  describe 'GET /studios' do
    it 'works! (now write some real specs)' do
      get studios_path
      expect(response).to have_http_status(200)
    end
  end
end
