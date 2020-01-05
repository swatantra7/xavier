class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.integer :resource_id
      t.string :resource_type
      t.string :category
      t.attachment :doc
      t.timestamps null: false
    end
  end
end
