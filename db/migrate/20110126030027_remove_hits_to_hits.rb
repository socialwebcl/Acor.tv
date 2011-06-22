class RemoveHitsToHits < ActiveRecord::Migration
  def self.up
    remove_column :hits, :hits
  end

  def self.down
    add_column :hits, :hits, :integer
  end
end
