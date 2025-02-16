class PlayerHand < ActiveRecord::Base
  has_many :tiles, as: :location
end
