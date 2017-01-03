# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'admin/areas/new', type: :view do
  before(:each) do
    assign(:admin_area, Admin::Area.new)
  end

  it 'renders new admin_area form' do
    render

    assert_select 'form[action=?][method=?]', admin_areas_path, 'post' do
    end
  end
end
