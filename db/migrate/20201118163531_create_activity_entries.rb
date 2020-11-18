class CreateActivityEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_entries do |t|
      t.integer :activity_id
      t.integer :daily_entry_id

      t.timestamps
    end
  end
end
