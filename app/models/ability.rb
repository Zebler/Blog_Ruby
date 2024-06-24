class Ability < ApplicationRecord:Base
  belongs_to :AbilityKit, class_name: "AbilityKit", foreign_key: "Ability_id"
end
class Ability
  string Ability_name
  integer Resource_cost
  string Description
end
class Ability
  @@no_of_Ability = 0
  def initialize(Ability_name, Resource_cost, Description)
    @Ability_name = Ability_name
    @Resource_cost  = Resource_cost
    @Description = Description
  end
end
