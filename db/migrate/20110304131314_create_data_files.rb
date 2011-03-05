class CreateDataFiles < ActiveRecord::Migration
  def self.up
    create_table :data_files do |t|
      t.string :ru_title
      t.string :en_title
      t.text :ru_description
      t.text :en_description

      t.timestamps
    end
  end

  def self.down
    drop_table :data_files
  end
end
