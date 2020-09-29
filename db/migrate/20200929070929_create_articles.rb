class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :category, null: false, foreign_key: true
      t.integer :release_status

      t.timestamps
    end
  end
end
