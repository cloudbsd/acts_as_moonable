class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :status, null: false, default: 0
      t.integer :priority, default: 1, null: false
      t.datetime :published_at
      t.date :approved_on

      t.timestamps
    end
  end
end
