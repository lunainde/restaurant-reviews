class Restaurant < ApplicationRecord
  validates :name, presence:  true
  validates :address, presence:  true
  validates :stars, inclusion:  {  in:  1..5  }
end
