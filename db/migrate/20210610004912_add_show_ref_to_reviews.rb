class AddShowRefToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :show, null: false, foreign_key: true
  end
end
