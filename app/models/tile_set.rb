class TileSet < ActiveRecord::Base
  include ValidityChecker
  has_many :tiles, as: :location
end
