require 'rails_helper'

RSpec.describe "admin/areas/index", type: :view do
  before(:each) do
    assign(:admin_areas, [
      Admin::Area.create!(),
      Admin::Area.create!()
    ])
  end

  it "renders a list of admin/areas" do
    render
  end
end
