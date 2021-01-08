class CreatePerformanceCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :performance_categories do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
