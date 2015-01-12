class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.string :url
      t.string :title
      t.integer :room_id

      t.timestamps
    end
  end
end
