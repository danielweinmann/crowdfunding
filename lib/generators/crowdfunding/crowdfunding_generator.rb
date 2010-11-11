require 'rails/generators'
class CrowdfundingGenerator < Rails::Generators::Base
  desc "This generator prepares your app for crowdfunding."
  include Rails::Generators::Migration
  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end
  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end
  def create_migration_file
    migration_template 'migration.rb', 'db/migrate/create_crowdfunding_projects_table.rb'
  end
end

