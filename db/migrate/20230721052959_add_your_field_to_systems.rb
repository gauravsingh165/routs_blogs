class AddYourFieldToSystems < ActiveRecord::Migration[7.0]
  def change
    add_column :systems, :your_field, :text
  end
end
