# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dir.glob("#{Rails.root}/db/seeds/*.yml").each do |yaml_filename|
  File.basename(yaml_filename,".yml").classify.constantize
  File.open(yaml_filename) do |load_target_yaml|
    records = YAML.load(load_target_yaml)

    records.each do |record|
      record.dup.save
    end
  end
end
