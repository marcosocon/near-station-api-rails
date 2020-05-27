# frozen_string_literal: false

require 'zip'

# Unzip class
class Unzip
  attr_reader :zip_file, :destination, :name_folder

  TEMP_FILE = 'tmp'.freeze

  def initialize(zip, destination: TEMP_FILE)
    @zip_file = zip
    @destination = destination
    unzip
  end

  def unzip
    FileUtils.mkdir_p(@destination)

    Zip::File.open(@zip_file) do |zip_file|
      zip_file.each do |f|
        @name_folder = f.name if @name_folder.nil?
        fpath = File.join(@destination, f.name)
        FileUtils.mkdir_p(File.dirname(fpath))
        zip_file.extract(f, fpath) unless File.exist?(fpath)
      end
    end
  end
end
