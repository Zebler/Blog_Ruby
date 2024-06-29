class CreateChampions < ActiveRecord::Migration[7.1]
  def change
    create_table :Champions do |t|
      t.string :Champ_name, null: false
      t.string :Champ_title, null: false
      t.string :Resource_type, null: false
      t.integer :Price, null: false
      t.integer :Champ_stat_id, null: true
      t.integer :Champ_ms, null: false
      t.integer :Champ_attack_range, null: false
      t.integer :Champ_AS_id, null: true
      t.integer :Champ_Ability_Kit_id, null: true


      t.timestamps
    end
  end
end
