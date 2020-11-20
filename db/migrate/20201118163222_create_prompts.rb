class CreatePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :prompts do |t|
      t.text :statement
      t.string :group

      t.timestamps
    end
  end
end
