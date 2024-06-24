class CreateStats < ActiveRecord::Migration[7.1]
  def change
    create_table :stats do |t|
      t.integer :Level, null: false
      t.integer :Health, null: false
      t.integer :Health_growth, null: false
      t.integer :Health_regen, null: false
      t.integer :Health_regen_growth, null: false
      t.integer :Resource, null: false
      t.integer :Resource_growth, null: false
      t.integer :Resource_regen, null: false
      t.integer :Resource_regen_growth, null: false
      t.integer :Armor, null: false
      t.integer :Armor_growth, null: false
      t.integer :MS, null: false
      t.integer :MS_growth, null: false
      t.integer :AD, null: false
      t.integer :AD_growth, null: false


      t.timestamps
    end
  end
end
