class System < ApplicationRecord
    validates :s_name, :s_year, presence: true
  end
  