class Account < ActiveRecord::Base

  before_save :default_values
    def default_values
      self.funds ||= self.start_value
    end

  belongs_to :user
  has_many :operations
end
