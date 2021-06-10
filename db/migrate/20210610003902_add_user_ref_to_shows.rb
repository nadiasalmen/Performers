class AddUserRefToShows < ActiveRecord::Migration[6.0]
  def change
    add_reference :shows, :user, null: false, foreign_key: true
  end
end
