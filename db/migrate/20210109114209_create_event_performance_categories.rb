class CreateEventPerformanceCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :event_performance_categories do |t|
      t.references :event_category, null: false, foreign_key: true
      t.references :performance_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
