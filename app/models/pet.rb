class Pet < ApplicationRecord
  validates :name, :address, presence: true
  validates :species, inclusion: { in: ['cat', 'dog', 'bird', 'mouse']}
end
