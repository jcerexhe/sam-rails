class Lodging < ApplicationRecord
  belongs_to :building
  has_many :rooms

  def current_capacity
    cap = 0
    rooms.each { |r| cap+=r.current_capacity }
    return cap
  end

  def total_capacity
    cap = 0
    rooms.each { |r| cap+=r.total_capacity }
    return cap
  end
end
