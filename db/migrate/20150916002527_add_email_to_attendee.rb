class AddEmailToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :email, :string
    add_column :attendees, :confirm_token, :text
  end
end
