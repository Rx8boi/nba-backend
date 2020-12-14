class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :image
      t.string :website
      t.string :schedule

      t.timestamps
    end
  end
end
