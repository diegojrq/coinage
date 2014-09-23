class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, confirmation: true
  validates :email_confirmation, presence: true, :on => :create
  validates :first_name, presence: true
  validates :birthday, presence: true
  validates :gender, presence: true

  validates_date :birthday, :on_or_before => lambda { Date.yesterday }

  has_many :accounts, :dependent => :destroy
  has_many :categories, :dependent => :destroy
end
