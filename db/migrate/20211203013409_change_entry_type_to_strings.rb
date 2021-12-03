class ChangeEntryTypeToStrings < ActiveRecord::Migration[6.1]
  def change
    change_column :entries, :start_time, :string
    change_column :entries, :end_time, :string
    change_column :entries, :date, :string
  end
end
