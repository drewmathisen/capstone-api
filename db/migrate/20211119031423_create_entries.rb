class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.string :title
      t.string :notes
      t.string :telescope_type
      t.time :start_time
      t.time :end_time
      t.string :location
      t.string :declination
      t.string :right_ascention
      t.string :magnification
      t.string :seeing_conditions
      t.string :filters
      t.date :date

      t.timestamps
    end
  end
end
