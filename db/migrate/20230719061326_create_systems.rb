class CreateSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :systems do |t|
      t.string :s_name
      t.string :s_year

      t.timestamps
    end
  end
end
