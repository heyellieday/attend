class AddCompleteToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :completed, :boolean
  end
end
