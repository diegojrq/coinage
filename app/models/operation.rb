class Operation < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
end
