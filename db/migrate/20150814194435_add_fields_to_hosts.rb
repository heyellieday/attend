class AddFieldsToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :fields, :hstore
  end
end
