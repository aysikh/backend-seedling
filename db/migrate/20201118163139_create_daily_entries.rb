class CreateDailyEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_entries do |t|
      t.integer :rating
      t.text :content
      t.integer :user_id
      t.integer :prompt_id

      t.timestamps
    end
  end
end
