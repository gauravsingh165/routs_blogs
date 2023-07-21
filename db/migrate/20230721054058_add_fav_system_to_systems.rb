class AddFavSystemToSystems < ActiveRecord::Migration[7.0]
  def change
    add_column :systems, :fav_system, :string
  end
end
