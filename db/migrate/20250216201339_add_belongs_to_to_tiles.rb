class AddBelongsToToTiles < ActiveRecord::Migration[7.0]
  def change
    add_column :tiles, :location_type, :string
    add_column :tiles, :location_id, :number
    add_index :tiles, %i[location_type location_id]
  end
end
