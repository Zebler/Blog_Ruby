class AttackSpeed < ApplicationRecord
  belongs_to :champion, class_name: "Champion", foreign_key: "champ_id"
end
class Attack_Speed
  float Base_attack_speed
  float Attack_windup
  float Attack_speed_ratio
  float Bonus_attack_speed
  float Champ_id
end
class Attack_Speed
  @@no_of_AttackSpeed = 0
def initialize(Base_attack_speed, Attack_windup, Attack_speed_ratio, Bonus_attack_speed)
  @Base_attack_speed = Base_attack_speed
  @Attack_windup = Attack_windup
  @Attack_speed_ratio = Attack_speed_ratio
  @Bonus_attack_speed = Bonus_attack_speed
end
end
