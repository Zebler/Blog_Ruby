class CreateAbilityKits < ActiveRecord::Migration[7.1]
  def change
    create_table :ability_kits do |t|
      t.integer :Champ_id, null: false
      t.integer :Ability_id, null: false

      t.timestamps
    end
  end
end
