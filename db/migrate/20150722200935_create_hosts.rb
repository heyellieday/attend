class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :website
      t.text :events_url

      t.timestamps null: false
    end
  end
end
