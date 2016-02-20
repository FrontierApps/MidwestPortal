class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :address1
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.boolean :is_primary

      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
