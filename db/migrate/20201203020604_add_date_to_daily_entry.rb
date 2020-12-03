class AddDateToDailyEntry < ActiveRecord::Migration[6.0]
  def change
    add_column :daily_entries, :date, :datetime
  end
end
