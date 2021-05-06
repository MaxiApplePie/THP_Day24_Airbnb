class Dog < ApplicationRecord
  belongs_to :city, optional: true
  has_many :strolls
  has_many :dog_sitters, through: :strolls
end
