class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :description
      t.references :gallery, index: true

      t.timestamps
    end
  end
end
