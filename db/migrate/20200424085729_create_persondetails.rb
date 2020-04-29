class CreatePersondetails < ActiveRecord::Migration[6.0]
  def change
    create_table :persondetails do |t|
      t.references :personable, polymorphic: true, null: false
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :cedula
      t.string :huella_digital

      t.timestamps
    end
  end
end
