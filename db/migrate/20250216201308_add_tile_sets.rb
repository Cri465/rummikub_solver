class AddTileSets < ActiveRecord::Migration[7.0]
  def change
    create_table :tile_sets do |t|
      t.timestamps
    end
  end
end
