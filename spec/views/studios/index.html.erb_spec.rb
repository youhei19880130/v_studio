# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'studios/index', type: :view do
  before(:each) do
    assign(:studios, [
             Studio.create!(
               name: 'Name',
               prefecture: 'Prefecture',
               city: 'City',
               address: 'Address',
               nearest_station_1: 'Nearest Station 1',
               nearest_station_2: 'Nearest Station 2',
               nearest_staion_3: 'Nearest Staion 3',
               tel: 'Tel',
               late_night: false,
               locker_room: false,
               parking: false,
               cancell_deadline: 'Cancell Deadline',
               image: 'Image',
               url: 'Url',
               feature: 'MyText',
               remarks: 'MyText'
             ),
             Studio.create!(
               name: 'Name',
               prefecture: 'Prefecture',
               city: 'City',
               address: 'Address',
               nearest_station_1: 'Nearest Station 1',
               nearest_station_2: 'Nearest Station 2',
               nearest_staion_3: 'Nearest Staion 3',
               tel: 'Tel',
               late_night: false,
               locker_room: false,
               parking: false,
               cancell_deadline: 'Cancell Deadline',
               image: 'Image',
               url: 'Url',
               feature: 'MyText',
               remarks: 'MyText'
             )
           ])
  end

  it 'renders a list of studios' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Prefecture'.to_s, count: 2
    assert_select 'tr>td', text: 'City'.to_s, count: 2
    assert_select 'tr>td', text: 'Address'.to_s, count: 2
    assert_select 'tr>td', text: 'Nearest Station 1'.to_s, count: 2
    assert_select 'tr>td', text: 'Nearest Station 2'.to_s, count: 2
    assert_select 'tr>td', text: 'Nearest Staion 3'.to_s, count: 2
    assert_select 'tr>td', text: 'Tel'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: 'Cancell Deadline'.to_s, count: 2
    assert_select 'tr>td', text: 'Image'.to_s, count: 2
    assert_select 'tr>td', text: 'Url'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
