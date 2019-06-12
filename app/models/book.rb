class Book < ApplicationRecord
	belongs_to :user
	belongs_to :category

	validates :title ,presence: true , length: {minimum:2 }
    
	validates :description , presence: true , length: {minimum:5 }

	validates :authername ,presence: true , length: {minimum:2 }
   
   	validates :image ,presence: true 
   

   	has_one_attached :image
end
