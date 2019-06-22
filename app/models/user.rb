class User < ApplicationRecord
  has_many :books  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   validates :email, presence: true , uniqueness: true , format: { with: URI::MailTo::EMAIL_REGEXP } 
   validates :password, presence: true , length: { in: 6..20 } , confirmation: true
   validates :password_confirmation, presence: true

end
