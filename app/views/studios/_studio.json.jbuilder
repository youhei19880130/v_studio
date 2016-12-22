json.extract! studio, :id, :name, :area_id, :address, :nearest_station_1, :nearest_station_2, :nearest_station_3, :tel, :start_hours, :end_hours, :late_night, :locker_room, :parking, :cancell_deadline, :image, :url, :feature, :remarks, :created_at, :updated_at
json.url studio_url(studio, format: :json)
