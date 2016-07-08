class Lodging < ApplicationRecord
  belongs_to :building
  has_many :rooms
end
