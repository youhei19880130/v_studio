class AddSearchQueryStrToPeopleRanges < ActiveRecord::Migration[5.0]
  def change
    add_column :people_ranges, :search_query_str, :string, null:false, after: :max
  end
end
