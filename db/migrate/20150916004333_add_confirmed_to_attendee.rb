class AddConfirmedToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :confirmed, :boolean
  end
end
