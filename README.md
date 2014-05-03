# HamlConverter

Bulk converts a directory's ERB files to HAML, and gets rid of the ERB files.

## Installation

Add this line to your application's Gemfile:

    gem 'haml_converter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haml_converter

## Usage

In Ruby, just run `HamlConverter.convert_and_replace!`. This method takes an optional argument of directory (full path), and will otherwise use the present working directory.

That's it!