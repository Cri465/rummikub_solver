class Tile < ActiveRecord::Base
  belongs_to :location, polymorphic: true
  validates :number,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 1,
              less_than_or_equal_to: 13
            }

  enum colour: {
    black: 0,
    blue: 1,
    orange: 2,
    red: 3
  }
end
