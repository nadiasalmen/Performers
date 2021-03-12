class CreateEnquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :enquiries do |t|
      t.string :question
      t.string :answer
      t.string :status

      t.timestamps
    end
  end
end
