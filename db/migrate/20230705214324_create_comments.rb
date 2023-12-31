class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :news, null: false, foreign_key: true

      t.timestamps
    end
  end
end
