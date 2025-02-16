require 'bundler/setup'
Bundler.require
require 'yaml'
require 'active_record'

db_config = YAML.load_file(File.expand_path('database.yml', __dir__))
ENV['RACK_ENV'] ||= 'development'
ActiveRecord::Base.establish_connection(db_config[ENV['RACK_ENV']])
ActiveRecord::Base.logger = Logger.new(STDOUT) if ENV['RACK_ENV'] == 'development'
