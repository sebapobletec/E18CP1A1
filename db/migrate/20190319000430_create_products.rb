class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.boolean :available
      t.boolean :selled, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
