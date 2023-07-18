class CreatePilets < ActiveRecord::Migration[7.0]
  def change
    create_table :pilets do |t|
      t.string :name
      t.string :email
      t.string :age
      t.string :company
      t.text :address

      t.timestamps
    end
  end
end
