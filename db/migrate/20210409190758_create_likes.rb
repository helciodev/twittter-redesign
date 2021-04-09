class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.string :user_id
      t.string :opinion_id
      t.references :user, null: false, foreign_key: true
      t.references :opinion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
