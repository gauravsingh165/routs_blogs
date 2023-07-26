class AddTableMyusers < ActiveRecord::Migration[7.0]
  def change
    add_column :myusers,:address, :string
  end
end
