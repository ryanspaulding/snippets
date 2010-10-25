class AddTitleToSnips < ActiveRecord::Migration
  def self.up
    add_column :snips, :title, :string
  end

  def self.down
    remove_column :snips, :title
  end
end
