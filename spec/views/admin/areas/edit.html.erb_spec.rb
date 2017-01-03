require 'rails_helper'

RSpec.describe "admin/areas/edit", type: :view do
  before(:each) do
    @admin_area = assign(:admin_area, Admin::Area.create!())
  end

  it "renders the edit admin_area form" do
    render

    assert_select "form[action=?][method=?]", admin_area_path(@admin_area), "post" do
    end
  end
end
