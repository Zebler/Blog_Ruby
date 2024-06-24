class Stat < ApplicationRecord:Base
  belongs_to :champion , class_name: "Champion", foreign_key: "Champ_id"
end
class Stat
  integer Level
  integer Health
  integer Health_growth
  integer Health_regen
  integer Health_regen_growth
  integer Resource
  integer Resource_growth
  integer Resource_regen
  integer Resource_regen_growth
  integer Armor
  integer Armor_growth
  integer MS
  integer MS_growth
  integer AD
  integer AD_growth
end
class Stat
  @@no_of_Stat = 0
  def initialize(Level, Health, Health_growth, Health_regen, Health_regen_growth, Resource, Resource_growth, Resource_regen, Resource_regen_growth, Armor, Armor_growth, MS, MS_growth, AD, AD_growth)
    @Level = Level
    @Health = Health
    @Health_growth = Health_growth
    @Health_regen = Health_regen
    @Health_regen_growth = Health_regen_growth
    @Resource = Resource
    @Resource_growth = Resource_growth
    @Armor = Armor
    @Armor_growth = Armor_growth
    @MS = MS
    @MS_growth = MS_growth
    @AD = AD
    @AD_growth = AD_growth
  end
end
