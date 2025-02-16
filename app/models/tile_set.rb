class TileSet < ActiveRecord::Base
  include ValidityChecker
  has_many :tiles, as: :location

  def valid_set?
    valid_group? || valid_run?
  end
end
