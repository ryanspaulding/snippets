class CreateSnips < ActiveRecord::Migration
  def self.up
    create_table :snips do |t|
      t.text :snippet
      t.string :tag

      t.timestamps
    end
  end

  def self.down
    drop_table :snips
  end
end
