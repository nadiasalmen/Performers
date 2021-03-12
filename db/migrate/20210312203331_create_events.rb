class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.string :status
      t.float :price
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps
    end
  end
end
