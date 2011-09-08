class AddScriptIdToRecordings < ActiveRecord::Migration
  def self.up
    add_column :recordings, :script_id, :integer
  end

  def self.down
    remove_column :recordings, :script_id
  end
end
