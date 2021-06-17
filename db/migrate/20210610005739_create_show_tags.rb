class CreateShowTags < ActiveRecord::Migration[6.0]
  def change
    create_table :show_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
