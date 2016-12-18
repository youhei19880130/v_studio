# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'rooms/new', type: :view do
  before(:each) do
    assign(:room, Room.new(
                    studio_id: 1,
                    name: 'MyString',
                    size: 1,
                    capacity: 1,
                    mirror: 'MyString',
                    floor: 1,
                    speaker: false,
                    mixer: false,
                    cd: false,
                    md: false,
                    mp3: false,
                    other_source: 'MyString',
                    dimmable: false,
                    wifi: false,
                    image: 'MyString',
                    feature: 'MyText',
                    remarks: 'MyText'
    ))
  end

  it 'renders new room form' do
    render

    assert_select 'form[action=?][method=?]', rooms_path, 'post' do
      assert_select 'input#room_studio_id[name=?]', 'room[studio_id]'

      assert_select 'input#room_name[name=?]', 'room[name]'

      assert_select 'input#room_size[name=?]', 'room[size]'

      assert_select 'input#room_capacity[name=?]', 'room[capacity]'

      assert_select 'input#room_mirror[name=?]', 'room[mirror]'

      assert_select 'input#room_floor[name=?]', 'room[floor]'

      assert_select 'input#room_speaker[name=?]', 'room[speaker]'

      assert_select 'input#room_mixer[name=?]', 'room[mixer]'

      assert_select 'input#room_cd[name=?]', 'room[cd]'

      assert_select 'input#room_md[name=?]', 'room[md]'

      assert_select 'input#room_mp3[name=?]', 'room[mp3]'

      assert_select 'input#room_other_source[name=?]', 'room[other_source]'

      assert_select 'input#room_dimmable[name=?]', 'room[dimmable]'

      assert_select 'input#room_wifi[name=?]', 'room[wifi]'

      assert_select 'input#room_image[name=?]', 'room[image]'

      assert_select 'textarea#room_feature[name=?]', 'room[feature]'

      assert_select 'textarea#room_remarks[name=?]', 'room[remarks]'
    end
  end
end
