class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :url
      t.text :date
      t.integer :host_id

      t.timestamps null: false
    end
  end
end
