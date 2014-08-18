class Category < ActiveRecord::Base
  belongs_to :operation
  belongs_to :user
  has_many :keywords, :dependent => :destroy
  accepts_nested_attributes_for :keywords
  
  has_ancestry
end
