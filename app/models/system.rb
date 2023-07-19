class System < ApplicationRecord
    validates :s_name, presence: true
    validates :s_year, presence: true
  end
  