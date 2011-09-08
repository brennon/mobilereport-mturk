class CreateRecordings < ActiveRecord::Migration
  def self.up
    create_table :recordings do |t|
      t.string :gender
      t.string :locale
      t.string :soundfile_file_name
      t.string :soundfile_content_type
      t.datetime :soundfile_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :recordings
  end
end
