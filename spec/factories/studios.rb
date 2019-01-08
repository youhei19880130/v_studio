FactoryBot.define do
  factory :studio do
    name 'SampleStudio'
    area_id 2
    address '東京都渋谷区渋谷1-1-1'
    nearest_station_1 '渋谷'
    tel '03-1111-1111'
    start_hours '09:00:00'
    end_hours '23:00:00'
    late_night 1
    locker_room 1
    parking 0
    cancell_deadline '時間貸しの場合 1週間前までは無料 2日～6日前までは50% 前日・当日は100% 一日貸しの場合 2日前までは50% 前日・当日は100%'
    url 'http://sample_studio.com'
    feature 'sample'
    status 1
    slug 'sample'
  end
end
