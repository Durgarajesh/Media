class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.references :channel, null: false, index: true
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
