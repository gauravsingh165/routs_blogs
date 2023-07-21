class ChangeTypeToColumb < ActiveRecord::Migration[7.0]
  def change
    change_column :systems, :your_field,:string
  end
end
