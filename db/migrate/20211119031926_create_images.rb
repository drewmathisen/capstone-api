class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :description
      t.integer :entry_id
      t.integer :user_id
      t.string :image_url

      t.timestamps
    end
  end
end
