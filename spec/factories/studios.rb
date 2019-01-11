FactoryBot.define do
  BooleanNumber = (0..1)
  CancelDeadline = (0..14)
  factory :studio do
    name { FFaker::Food.fruit + " Studio" }
    # TODO: Edit after creating area factory
    area_id 1
    address { FFaker::AddressJA.address }
    nearest_station_1 { FFaker::AddressJA.ward }
    tel { FFaker::PhoneNumber.short_phone_number }
    start_hours '09:00:00'
    end_hours '23:00:00'
    late_night { Random.rand(BooleanNumber) }
    locker_room { Random.rand(BooleanNumber) }
    parking { Random.rand(BooleanNumber) }
    cancell_deadline { Random.rand(CancelDeadline).to_s + "日前まで" }
    url { FFaker::Internet.http_url }
    feature 'sample'
    status 1
    slug { "#{name}".downcase.gsub(/\s/, '-') }
  end
end
