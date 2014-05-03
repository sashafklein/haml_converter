require "haml_converter/version"

module HamlConverter

  def self.convert_and_replace!(dir = Dir.pwd)
    dir_erb_files(dir).each { |erb_file| convert_and_remove!(erb_file) }
  end

  private

  def self.dir_erb_files(dir)
    Dir.glob File.join(dir.to_s, "**", "*.erb")
  end

  def self.convert_and_remove!(erb_file)
    haml_file = "#{erb_file[0..-4]}haml"

    create_haml_file!(erb_file, haml_file)
    remove_erb_file!(erb_file)
  end

  def self.create_haml_file!(erb_file, haml_file)
    `html2haml -e #{erb_file} #{haml_file}`
    puts "Created File: #{haml_file}"
  end

  def self.remove_erb_file!(erb_file)
    `rm #{erb_file}`
    puts "Removed File: #{erb_file}"
  end
end
