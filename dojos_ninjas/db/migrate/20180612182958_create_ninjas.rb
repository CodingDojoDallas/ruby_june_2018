class CreateNinjas < ActiveRecord::Migration
  def change
    create_table :ninjas do |t|
      t.string :name
      t.string :city
      t.string :state
      t.references :dojo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
