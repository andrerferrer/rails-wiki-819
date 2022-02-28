class CreateEditRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :edit_requests do |t|
      t.references :section, null: false, foreign_key: true
      t.text :new_text

      t.timestamps
    end
  end
end
