class Job < ApplicationRecord
  validate :due_date_future
  belongs_to :user, class_name: 'User', :foreign_key => :user_id
  belongs_to :customer, class_name: 'User', :foreign_key => :customer_id, optional: true
  validates :pickup_address, :presence => true
  validates :dropoff_address, :presence => true
  validates :instructions, :presence => true
  validates :due_date, :presence => true
  validates :cost, :presence => true
  before_validation :set_status, on: :create

  def due_date_future
    if due_date.present? && due_date < Date.today
      errors.add(:due_date, "can't be in the past")
    end
  end

  def set_status
    self.status = 'pending_acceptance'
  end
end
