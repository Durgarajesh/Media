class AddColumnIsFavToShows < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :is_fav, :boolean
  end
end
