class RemoveHitToHits < ActiveRecord::Migration
  def self.up
    remove_column :hits, :hit
  end

  def self.down
    add_column :hits, :hit, :integer
  end
end
