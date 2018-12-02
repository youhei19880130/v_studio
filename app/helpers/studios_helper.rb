# frozen_string_literal: true
module StudiosHelper
  def format_jpy(num)
    "¥ #{num.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')}"
  end

  def table_format(value)
    if value == true || value.present?
      '◯'
    else
      '×'
    end
  end

  def people_range_format(people_range_id)
    return '' if people_range_id.blank?
    PeopleRange.find(people_range_id).search_query_str
  end
end
