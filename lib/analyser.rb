# frozen_string_literal: true
class Analyser
  def self.page_views(parsed_log)
    grouped_log = group_log(parsed_log).map do |page, ip_addresses| 
      {
        page: page,
        page_views: ip_addresses.length
      }
    end

    sort_ascending(grouped_log, :page_views)
  end

  def self.unique_views(parsed_log)
    grouped_log = group_log(parsed_log).map do |page, ip_addresses| 
      {
        page: page,
        unique_views: ip_addresses.uniq.length
      }
    end

    sort_ascending(grouped_log, :unique_views)
  end

  private

  def self.group_log(parsed_log)
    parsed_log.group_by(&:page)
  end

  def self.sort_ascending(log, key)
    log.sort_by { |hsh| hsh[key] }.reverse
  end
end
