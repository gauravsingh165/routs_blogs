class System < ApplicationRecord
    validates :s_name, presence: true
    validates :s_year, presence: true
    serialize :fav_system, Array
    serialize :your_field, Array
  end
  