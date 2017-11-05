class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :city
      t.string :address
      t.string :province
      t.string :postal_code
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
