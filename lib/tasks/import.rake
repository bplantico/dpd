require 'csv'

namespace :import do
  desc "entire file"
    task :entire_file => :environment do
      items = []
      converter = lambda { |header| header.downcase }
      CSV.foreach('lib/tasks/police_pedestrian_stops_and_vehicle_stops.csv', headers: true, header_converters: converter) do |row|
        items << row.to_h
      end
      records_per_import = 1000
      imported_items = 0
      total_import = items.count
      start_time = Time.now

      items.each_slice(records_per_import) do |a|
        Stop.import(a)
        imported_items += records_per_import
        puts "#{records_per_import} more records imported... #{imported_items}/#{total_import} (#{(imported_items/total_import.to_f).round(2)}%)"
      end
      puts "Processed #{Stop.count}, in #{Time.now - start_time} seconds."
  end
end
