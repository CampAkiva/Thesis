class AddColumnToDocument < ActiveRecord::Migration
  def self.up
    add_attachment :documents, :avatar
  end

  def self.down
    remove_attachment :documents, :avatar
  end
end
