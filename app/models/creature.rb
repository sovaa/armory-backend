class Creature
  include Mongoid::Document
  field :name, type: String
  field :health, type: Integer
end
