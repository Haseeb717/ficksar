class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
