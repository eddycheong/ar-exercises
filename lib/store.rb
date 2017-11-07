class Store < ActiveRecord::Base
  has_many :employees

  before_destroy :empty?

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }

  private

  def empty?
    throw(:abort) if self.employees.size > 0
  end

end
