class AddShowCategoryRefToShows < ActiveRecord::Migration[6.0]
  def change
    add_reference :shows, :show_category, null: false, foreign_key: true
  end
end
