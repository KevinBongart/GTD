class ChangeAreaIdToZoneId < ActiveRecord::Migration
  def self.up
    rename_column(:tasks, :area_id, :zone_id)
  end

  def self.down
    rename_column(:tasks, :zone_id, :area_id)
  end
end
