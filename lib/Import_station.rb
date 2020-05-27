# frozen_string_literal: false

# ImportStation class
class ImportStation
  attr_reader :name_folder

  def initialize(name_folder)
    @name_folder = name_folder
  end

  def call
    if File.exist?(route)
      file = File.open(route)
      file.each_with_index do |line, index|
        create_station(line) if index != 0
      end
      file.close
    else
      p '** File Dosent exists **'
    end
  end

  private

  def create_station(line)
    station = line.split(',')
    Station.create(
      stop_id: station[0],
      stop_code: station[1],
      stop_name: station[2],
      stop_lat: station[3],
      stop_lon: station[4],
      location_type: station[5],
      parent_station: station[6]
    )
  end

  def route
    "tmp/#{@name_folder}/stops.txt"
  end
end
