class AddShowRefToEnquiries < ActiveRecord::Migration[6.0]
  def change
    add_reference :enquiries, :show, null: false, foreign_key: true
  end
end
