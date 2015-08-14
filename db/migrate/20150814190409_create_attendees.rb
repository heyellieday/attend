class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.hstore :details, default: {}, null: false

      t.timestamps null: false
    end
  end
end
