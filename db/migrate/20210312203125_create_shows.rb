class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :description
      t.float :minimum_price

      t.timestamps
    end
  end
end
