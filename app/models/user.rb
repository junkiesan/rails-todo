class User < ApplicationRecord
  validates :email, :username, uniqueness: true, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  protected
  def password_required?
    confirmed? ? super : false
  end
         
end
        