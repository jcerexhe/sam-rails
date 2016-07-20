class Building < ApplicationRecord
  has_many :lodgings, :dependent => :destroy

  def current_capacity
    cap = 0
    lodgings.each { |l| cap+=l.current_capacity }
    return cap
  end

  def total_capacity
    cap = 0
    lodgings.each { |l| cap+=l.total_capacity }
    return cap
  end
end
