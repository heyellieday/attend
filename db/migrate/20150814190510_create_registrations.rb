class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :event_id
      t.string :attendee_id

      t.timestamps null: false
    end
  end
end
