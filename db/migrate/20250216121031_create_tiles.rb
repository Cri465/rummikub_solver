class CreateTiles < ActiveRecord::Migration[7.0]
  def change
    create_table :tiles do |t|
      t.integer :number
      t.integer :colour, default: nil, null: false
      t.timestamps
    end
  end
end
