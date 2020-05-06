class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.time :time
      t.references :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
