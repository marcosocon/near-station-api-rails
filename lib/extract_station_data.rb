# frozen_string_literal: false

# ExtractStationData class
class ExtractStationData
  attr_reader :file

  def initialize(file)
    @file = file
  end

  def call
    unzip = Unzip.new(file)
    ImportStation.new(unzip.name_folder).call

    {
      imported: true,
      error: nil
    }
  rescue StandardError => e
    {
      imported: false,
      error: "file: #{unzip.name_folder}, error: #{e.inspect}"
    }
  end
end
