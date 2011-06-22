class AddLinkIdToHits < ActiveRecord::Migration
  def self.up
  	  add_column :hits, :link_id, :integer
  end

  def self.down
  	  remove_column :hits, :link_id
  end
end
