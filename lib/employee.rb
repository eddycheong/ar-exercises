class Employee < ActiveRecord::Base
  belongs_to :store

  after_validation :generate_password, on: :create
  
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, inclusion: { in: (40..200) }
  validates :store, presence: true

  private
    def generate_password 
      self.password = (0...8).map { (65 + rand(26)).chr }.join
    end
end
