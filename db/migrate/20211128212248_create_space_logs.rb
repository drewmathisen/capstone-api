class CreateSpaceLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :space_logs do |t|
      t.integer :entry_id
      t.integer :observed_body_id

      t.timestamps
    end
  end
end
