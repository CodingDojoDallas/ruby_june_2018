class CreateDojos < ActiveRecord::Migration
  def change
    create_table :dojos do |t|
      t.string :branch
      t.string :street
      t.string :cityLstring
      t.string :state

      t.timestamps null: false
    end
  end
end