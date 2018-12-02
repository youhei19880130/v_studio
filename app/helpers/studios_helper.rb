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
    logger.info("people_range_id: #{people_range_id}")
    return '' if people_range_id.blank?
    min = PeopleRange.find(people_range_id).min
    max = PeopleRange.find(people_range_id).max

    if people_range_id.to_i == Settings.people_range.all
      ''
    elsif max == PeopleRange.maximum(:max)
      "#{min}-"
    else
      "#{min}-#{max}"
    end
  end
end
