# Gpx2geojson

This is a _very_ simple tool for converting a GPX file (probably from a handheld GPS device) to a GeoJSON. Your GPX file may have more information than just the actual track (waypoints, for example), but this tool will just return a MultiLinePoint GeoJSON. The kind of thing you might want to load into Leaflet, for example.

## Installation

Add this line to your application's Gemfile:

    gem 'gpx2geojson'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gpx2geojson

## Usage

To parse a file, open it e.g. `file = File.open(some_file_path.gpx)` and parse with `Gpx2geojson.parse(file)`.  That will return the JSON string, so you may need to parse it again using Ruby's `JSON.parse`.

## Contributing

Please feel free to contribute. Feel free to submit a pull request or submit an issue.

1. Fork it ( https://github.com/[my-github-username]/gpx2geojson/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
