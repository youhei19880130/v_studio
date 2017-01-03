require 'rails_helper'

RSpec.describe "admin/areas/show", type: :view do
  before(:each) do
    @admin_area = assign(:admin_area, Admin::Area.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
