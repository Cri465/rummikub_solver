class TileSet < ActiveRecord::Base
  has_many :tiles, as: :location
end
