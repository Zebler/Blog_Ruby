class AbilityKit < ApplicationRecord:Base
  has_many :ability, class_name: "ability", foreign_key: "Ability_id"
  belongs_to :Champion, class_name: "Champion", foreign_key: "Champ_id"
end
class AbilityKit
  integer Champ_id
  integer Ability_id
end
class AbilityKit
  @@no_of_AbilityKit = 0
  def initialize(Champ_id, Ability_id)
    @Champ_id = Champ_id
    @Ability_id = Ability_id
  end
end
