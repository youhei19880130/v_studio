# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'rooms/show', type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
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
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Mirror/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Other Source/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
