class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|

      t.string :title, null: false
      t.references :user, foreign_key: true, null: false
      t.datetime :current_sign_in_at

      t.timestamps
    end
  end
end
