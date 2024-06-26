class Champion <ActiveRecord::Base
  has_many :Stat , class_name: "Stat", foreign_key: "Stats_id"
  has_many :Attack_Speed, class_name: "Attack_Speed", foreign_key: "Champ_AS_id"
  has_many :AblilityKit, class_name: "AblilityKit", foreign_key: "Champ_Ability_Kit_id"

  attr_accessor :Champ_title, :Resource_type, :Price, :Champ_stat_id, :Champ_ms, :Champ_attack_range, :Champ_AS_id, :Champ_Ability_Kit_id

  @@no_of_Champion = 0
  def initialize( champ_title, resource_type, price, champ_stats_id, champ_ms, champ_attack_range, champ_AS_id, champ_Ability_Kit_id)
    @champ_title = Champ_title
    @resource_type = Resource_type
    @price = Price
    @champ_stat_id = Champ_stat_id
    @champ_ms = Champ_ms
    @champ_attack_range = Champ_attack_range
    @champ_AS_id = Champ_AS_id
    @champ_Ability_Kit_id = Champ_Ability_Kit_id
  end
  def self.show
      @champion = Champion.find(params[:id])
  end
end
