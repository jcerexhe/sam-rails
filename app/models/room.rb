class Room < ApplicationRecord
  belongs_to :lodging, :dependent => :destroy
  belongs_to :user, optional: true, :dependent => :destroy

  def current_capacity
    return 1 if user
    return 0
  end

  def total_capacity
    1
  end
end
