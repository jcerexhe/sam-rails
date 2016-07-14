class Room < ApplicationRecord
  belongs_to :lodging
  belongs_to :user, optional: true

  def current_capacity
    return 1 if user
    return 0
  end

  def total_capacity
    1
  end
end
