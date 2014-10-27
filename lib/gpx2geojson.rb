require "gpx2geojson/version"
require "nokogiri"

module Gpx2geojson
  def self.parse(file_thing)
    @gpx = file_thing || file_thing.tempfile
    parse_file
  end

  def self.parse_file
    data = @gpx.read

    file_mode = data =~ /trkpt/ ? "//trkpt" : (data =~ /rtept/ ? "//rtept" : "//wpt")

    geo_json = '{"type": "Feature", "geometry": {"type": "MultiLineString","coordinates": [['
    Nokogiri.HTML(data).search(file_mode).each do |tp|
      geo_json += '[' + "#{tp[:lon].to_f}" + ", " + "#{tp[:lat].to_f}" + '], '
    end
    
    geo_json = geo_json[0..-3]
    geo_json += ']]}}'
    geo_json
  end
end

