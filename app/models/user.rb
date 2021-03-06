class User < ApplicationRecord

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :username, presence: true, uniqueness: true, length: {minimum: 6, maximum: 24}
  validates :email, presence: true, format: { with: /\A^([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})$\z/i, multiline: true }
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
