class CreateProjectsTable < ActiveRecord::Migration
  def self.up
    create_table :crowdfunding_projects do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
  def self.down
    drop_table :crowdfunding_projects
  end
end

