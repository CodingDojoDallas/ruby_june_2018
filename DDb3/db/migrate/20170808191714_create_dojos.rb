class CreateDojos < ActiveRecord::Migration
  def change
    create_table :dojos do |t|
      t.string :brand
      t.string :street
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
