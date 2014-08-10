class Category < ActiveRecord::Base
  belongs_to :operation
  belongs_to :user
  has_many :keywords
end
