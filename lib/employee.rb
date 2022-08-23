class Employee < ActiveRecord::Base

  # validate that the employee belongs to a store with the correct ID
  belongs_to :store, required: true

  # validate that the employee has a first name present
  validates :first_name, presence: true

  # validate that the employee has a last name present
  validates :last_name, presence: true

  # validate that the employee has a hourly rate that is between $40/hour to $200/hour
  validates :hourly_rate, numericality: {greater_than_equal_to: 40, less_than_equal_to: 200} 

end
