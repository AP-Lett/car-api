class Car < ApplicationRecord
  validates :make,
    presence: true
    
  validates :model,
    presence: true

  validates :year,
    presence: true,
    numericality: { only_integer: true },
    inclusion: { 
      in: 1000..9999,
      message: 'must be a four-digit year'
    } #works

  validates :color,
    presence: true

  belongs_to :owner
  
end
