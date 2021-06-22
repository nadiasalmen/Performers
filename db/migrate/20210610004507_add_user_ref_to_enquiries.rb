class AddUserRefToEnquiries < ActiveRecord::Migration[6.0]
  def change
    add_reference :enquiries, :user, null: false, foreign_key: true
  end
end
