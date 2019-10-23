class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
    	t.string :name, null: false
      t.references :squirrel, foreign_key: true
      t.references :location, foreign_key: true
      t.references :project, null: false, foreign_key: true
      
      t.timestamp :sighted_at
      t.timestamps
    end
  end
end
