class RenameCallback < ActiveRecord::Migration
  def self.up
    rename_column :contacts, :callback, :callmeback
  end

  def self.down
  end
end
