class Store < ActiveRecord::Base

  has_many :employees

  # validate that store name is present
  validates :name, presence: true

  # validate that store name has length of 3 or more letters
  validates :name, length: { minimum: 3 }

  # validate that the annual revenue is greater then or equal to 0
  validates :annual_revenue, numericality: {greater_than_equal_to: 0}

  # validate apparel if it is entered or not
  validate :apparel_type

  # function that determines if either the mens/womens apparel was not provided
  def apparel_type
    if mens_apparel.blank? && womens_apparel.blank?
      errors.add(:mens_apparel, "must have at least one kind of apparel")
      errors.add(:womens_apparel, "must have at least one kind of apparel")
    end
  end
end
