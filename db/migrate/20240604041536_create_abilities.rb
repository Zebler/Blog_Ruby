class CreateAbilities < ActiveRecord::Migration[7.1]
  def change
    create_table :abilities do |t|
      t.string :Ability_name, null: false
      t.integer :Resource_cost, null: false
      t.string :Description, null: false


      t.timestamps
    end
  end
end
