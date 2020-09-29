class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :approval_status
      t.string :ip_address
      t.string :hostname
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
