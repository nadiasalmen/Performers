class AddShowRefToFaqs < ActiveRecord::Migration[6.0]
  def change
    add_reference :faqs, :show, null: false, foreign_key: true
  end
end
