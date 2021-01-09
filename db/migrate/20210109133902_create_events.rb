class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.references :performance, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :event_category, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
