class AddDataToHits < ActiveRecord::Migration
  def self.up
    add_column :hits, :ip, :string
    add_column :hits, :referer, :string
    add_column :hits, :agent, :string
  end

  def self.down
    remove_column :hits, :agent
    remove_column :hits, :referer
    remove_column :hits, :ip
  end
end
