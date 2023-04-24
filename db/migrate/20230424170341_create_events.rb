class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name_event
      t.date :date_event
      t.time :event_start_time
      t.time :event_end_time
      t.string :event_city
      t.float :event_entry_fees
      t.string :event_status
      t.integer :event_capacity
      t.string :event_description

      t.timestamps
    end
  end
end
