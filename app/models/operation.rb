class Operation < ActiveRecord::Base
  belongs_to :account
  has_one :category
end
