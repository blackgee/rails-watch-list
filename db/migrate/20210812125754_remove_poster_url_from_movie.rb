class RemovePosterUrlFromMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :posterUrl, :text
  end
end
