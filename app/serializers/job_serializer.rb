class JobSerializer < ActiveModel::Serializer
  attributes :id, :pickup_address, :dropoff_address, :instructions, :due_date, :cost, :status
  has_one :user
  has_one :customer
end
