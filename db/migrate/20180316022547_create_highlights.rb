class CreateHighlights < ActiveRecord::Migration[5.1]
  def change
    create_table :highlights do |t|
      t.integer :meeting_id
      t.datetime :start_time
      t.datetime :end_time
      t.text :highlight_text

      t.timestamps
    end
  end
end
