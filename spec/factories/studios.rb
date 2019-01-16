FactoryBot.define do
  factory :studio do
    name { FFaker::Food.fruit + " Studio" }
    # TODO: Edit after creating area factory
    area_id 1
    address { FFaker::AddressJA.address }
    nearest_station_1 { FFaker::AddressJA.ward }
    tel { FFaker::PhoneNumber.short_phone_number }
    start_hours { FFaker::Time.datetime.strftime('%H:%M:%S') }
    end_hours { FFaker::Time.datetime.strftime('%H:%M:%S') }
    late_night { Random.rand(FactoryConstants::BOOLEAN_NUMBER) }
    locker_room { Random.rand(FactoryConstants::BOOLEAN_NUMBER) }
    parking { Random.rand(FactoryConstants::BOOLEAN_NUMBER) }
    cancell_deadline { Random.rand(FactoryConstants::CANCEL_DEADLINE).to_s + "日前まで" }
    url { FFaker::Internet.http_url }
    feature 'sample'
    status 1
    slug { "#{name}".downcase.gsub(/\s/, '-') }
  end
end
