class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :description
      t.integer :user_id
      t.string :zip

      t.timestamps
    end
  end
end
