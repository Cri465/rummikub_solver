class Tile < ActiveRecord::Base
  enum colour: {
    black: 0,
    blue: 1,
    orange: 2,
    red: 3
  }
end
