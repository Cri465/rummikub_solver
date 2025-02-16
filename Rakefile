require 'bundler/setup'
require 'active_record'
require 'yaml'
require_relative 'config/environment'

namespace :db do
  desc 'Migrate the database'
  task :migrate do
    ActiveRecord::MigrationContext.new(
      ActiveRecord::Migrator.migrations_paths,
      ActiveRecord::SchemaMigration
    ).migrate
  end

  desc 'Rollback the last migration'
  task :rollback do
    ActiveRecord::MigrationContext.new(
      ActiveRecord::Migrator.migrations_paths,
      ActiveRecord::SchemaMigration
    ).rollback
  end

  desc 'Create a new migration file'
  task :generate_migration do
    name = ENV['NAME']
    if name.nil? || name.empty?
      puts 'ERROR: Please provide a migration name. Example: rake db:generate_migration NAME=create_users'
      exit 1
    end

    timestamp = Time.now.strftime('%Y%m%d%H%M%S')
    filename = "db/migrate/#{timestamp}_#{name}.rb"

    migration_content = <<~RUBY
      class #{name.split('_').map(&:capitalize).join} < ActiveRecord::Migration[7.0]
        def change
        end
      end
    RUBY

    File.write(filename, migration_content)
    puts "Created migration: #{filename}"
  end
end
