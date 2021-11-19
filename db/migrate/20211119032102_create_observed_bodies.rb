class CreateObservedBodies < ActiveRecord::Migration[6.1]
  def change
    create_table :observed_bodies do |t|
      t.string :name

      t.timestamps
    end
  end
end
