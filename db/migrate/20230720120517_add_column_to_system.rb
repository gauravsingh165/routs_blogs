class AddColumnToSystem < ActiveRecord::Migration[7.0]
  def change
    add_column :systems, :desciption, :text
  end
end
