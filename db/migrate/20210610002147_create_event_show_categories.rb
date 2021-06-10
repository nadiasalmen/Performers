class CreateEventShowCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :event_show_categories do |t|
      t.references :event_category, null: false, foreign_key: true
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
