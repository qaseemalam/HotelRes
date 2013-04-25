class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts, :id => false do |t|
      t.string :host_id, :primary_key => true
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
