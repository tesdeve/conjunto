class CreateResidents < ActiveRecord::Migration[6.0]
  def change
    create_table :residents do |t|
      t.boolean :principal
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
