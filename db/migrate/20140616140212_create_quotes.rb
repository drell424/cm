class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :price
      t.text :details

      t.timestamps
    end
  end
end
