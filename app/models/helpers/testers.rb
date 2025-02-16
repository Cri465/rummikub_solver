class Testers
  class << self
    def sample_valid_group
      tile_set = TileSet.create
      amount = [3, 4].sample
      num = Array(1..13).sample
      amount.times do
        Tile.create!(number: num, colour: Array(1..amount).shuffle.pop, location: tile_set)
      end
      tile_set
    end

    def sample_valid_run
      tile_set = TileSet.create
      amount = Array(3..13).sample
      colour = Array(0..3).sample
      Array(1..amount).each do |i|
        Tile.create!(number: i, colour:, location: tile_set)
      end
      tile_set
    end
  end
end
