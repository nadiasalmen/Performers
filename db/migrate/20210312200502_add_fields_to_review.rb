class AddFieldsToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :content, :string
    add_column :reviews, :answer, :string
    add_column :reviews, :status, :string
    add_column :reviews, :stars, :float
  end
end
