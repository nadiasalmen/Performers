class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :performance_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
