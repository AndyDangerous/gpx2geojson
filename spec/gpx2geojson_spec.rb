require 'spec_helper'
require 'pry'
require 'json'

describe Gpx2geojson do
  subject { Gpx2geojson.new }

  describe 'convert' do
    it 'converts a (Garmin) file to JSON' do
      file = File.open('./spec/fixtures/elevator_shaft_garmin.gpx')
      parsed = JSON.parse(Gpx2geojson.parse(file))

      expect(parsed["type"]).to eq("Feature")
      expect(parsed["geometry"]["type"]).to eq("MultiLineString")
      expect(parsed['geometry']['coordinates'][0].length).to eq(5)
    end

    it 'converts a non-Garmin GPX file to GeoJSON' do
      file = File.open('./spec/fixtures/holy_x_non_garmin.gpx')
      parsed = JSON.parse(Gpx2geojson.parse(file))

      expect(parsed["type"]).to eq("Feature")
      expect(parsed["geometry"]["type"]).to eq("MultiLineString")
      expect(parsed['geometry']['coordinates'][0].length).to eq(5)
    end
  end
end
