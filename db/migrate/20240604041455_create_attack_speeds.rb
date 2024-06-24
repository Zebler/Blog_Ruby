class CreateAttackSpeeds < ActiveRecord::Migration[7.1]
  def change
    create_table :attack_speeds do |t|
      t.float :Base_attack_speed, null: false
      t.float :Attack_windup, null: false
      t.float :Attack_speed_ratio, null: false
      t.float :Bonus_attack_speed, null: false


      t.timestamps
    end
  end
end
