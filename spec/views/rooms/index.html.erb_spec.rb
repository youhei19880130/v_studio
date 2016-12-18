# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'rooms/index', type: :view do
  before(:each) do
    assign(:rooms, [
             Room.create!(
               studio_id: 2,
               name: 'Name',
               size: 3,
               capacity: 4,
               mirror: 'Mirror',
               floor: 5,
               speaker: false,
               mixer: false,
               cd: false,
               md: false,
               mp3: false,
               other_source: 'Other Source',
               dimmable: false,
               wifi: false,
               image: 'Image',
               feature: 'MyText',
               remarks: 'MyText'
             ),
             Room.create!(
               studio_id: 2,
               name: 'Name',
               size: 3,
               capacity: 4,
               mirror: 'Mirror',
               floor: 5,
               speaker: false,
               mixer: false,
               cd: false,
               md: false,
               mp3: false,
               other_source: 'Other Source',
               dimmable: false,
               wifi: false,
               image: 'Image',
               feature: 'MyText',
               remarks: 'MyText'
             )
           ])
  end

  it 'renders a list of rooms' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
    assert_select 'tr>td', text: 'Mirror'.to_s, count: 2
    assert_select 'tr>td', text: 5.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: 'Other Source'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: 'Image'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
