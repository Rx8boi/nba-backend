class CreateAthletes < ActiveRecord::Migration[6.1]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :position
      t.integer :fantasy_points
      t.boolean :injured
      t.string :image
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
