class AddMigrationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :specialist, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age_limit, :boolean
    add_column :users, :pending_specialist, :boolean
  end
end
