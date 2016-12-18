# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'studios/show', type: :view do
  before(:each) do
    @studio = assign(:studio, Studio.create!(
                                name: 'Name',
                                prefecture: 'Prefecture',
                                city: 'City',
                                address: 'Address',
                                nearest_station_1: 'Nearest Station 1',
                                nearest_station_2: 'Nearest Station 2',
                                nearest_station_3: 'Nearest Staion 3',
                                tel: 'Tel',
                                late_night: false,
                                locker_room: false,
                                parking: false,
                                cancell_deadline: 'Cancell Deadline',
                                image: 'Image',
                                url: 'Url',
                                feature: 'MyText',
                                remarks: 'MyText'
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Prefecture/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Nearest Station 1/)
    expect(rendered).to match(/Nearest Station 2/)
    expect(rendered).to match(/Nearest Staion 3/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Cancell Deadline/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
