class User < ApplicationRecord
# Associations
  has_many :todos
  # validates :email, uniqueness: true, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  
  protected

  def password_required?
    confirmed? ? super : false
  end
         
end
        