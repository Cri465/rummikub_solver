require_relative 'config/environment'
Dir[File.expand_path('./app/models/helpers/*.rb', __dir__)].each { |file| require file }
Dir[File.expand_path('./app/models/*.rb', __dir__)].each { |file| require file }
