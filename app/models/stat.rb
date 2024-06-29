class Stat < ApplicationRecord:Base
  belongs_to :champion , class_name: "Champion", foreign_key: "Champ_id"
end
attr_accessor :Level, :Health, :Health_growth, :Health_regen, :Health_regen_growth, :Resource, :Resource_growth, :Resource_regen, :Resource_regen_growth, :Armor, :Armor_growth, :MS, :MS_growth, :AD, :AD_growth
  @@no_of_Stat = 0
  def initialize(Level, Health, Health_growth, Health_regen, Health_regen_growth, Resource, Resource_growth, Resource_regen, Resource_regen_growth, Armor, Armor_growth, MS, MS_growth, AD, AD_growth)
    @Level = Level
    @Health = Health
    @Health_growth = Health_growth
    @Health_regen = Health_regen
    @Health_regen_growth = Health_regen_growth
    @Resource = Resource
    @Resource_growth = Resource_growth
    @Resource_regen = Resource_regen
    @Resource_regen_growth = Resource_regen_growth
    @Armor = Armor
    @Armor_growth = Armor_growth
    @MS = MS
    @MS_growth = MS_growth
    @AD = AD
    @AD_growth = AD_growth
  end
end
