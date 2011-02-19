require 'rubygems'
require 'riot'
require 'tempfile'


class Riot::Situation

  def create_test(options)
    options = {:content => options} unless options.is_a?(Hash)
    temp_path = File.expand_path('../../../tmp',__FILE__)
    path = (options[:path] || temp_path) + "/#{String.random}_test.rb"
    File.open(path, "w") do |file|
      file.write options[:content]
    end
    path
  end

  def run_test(file_path, app_base=Dir.pwd)
    `ruby #{file_path}`
  end
  
end

class String
  def self.random
    (0...8).map{65.+(rand(25)).chr}.join
  end
end

