class Champion <ActiveRecord::Base
  has_many :stats , class_name: "Stat", foreign_key: "Stats_id"
  has_many :ASs, class_name: "Attack_Speed", foreign_key: "Champ_AS_id"
  has_many :AblilityKits, class_name: "AblilityKit", foreign_key: "reference_id"
end
class Champion
  integer Champ_id
  string  Champ_title
  string  Resource_type
  integer Price
  integer Champ_stats_id
  integer Champ_ms
  integer Champ_attack_range
  integer Champ_AS_id
  integer Champ_Ability_Kit_id
end
  @@no_of_Champion = 0
  def initialize(Champ_id, Champ_title, Resource_type, Price, Champ_stats_id, Champ_ms, Champ_attack_range, Champ_AS_id, Champ_Ability_Kit_id)
    @Champ_id = Champ_id
    @Champ_title = Champ_title
    @Resource_type = Resource_type
    @Price = Price
    @Champ_stats_id = Champ_stats_id
    @Champ_ms = Champ_ms
    @Champ_attack_range = Champ_attack_range
    @Champ_AS_id = Champ_AS_id
    @Champ_Ability_Kit_id = Champ_Ability_Kit_id
end
