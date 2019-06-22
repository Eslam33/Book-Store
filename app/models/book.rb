class Book < ApplicationRecord
	belongs_to :user
	belongs_to :category

	validates :title ,presence: true , uniqueness: true , length: { minimum: 2 } ,  length: { maximum: 24 } , format: { with: /\A[a-zA-Z0-9]+\Z/ }
    
	validates :description , presence: true , length: {minimum:5 }

	validates :authername ,presence: true , uniqueness: true , length: { minimum: 2 } ,  length: { maximum: 24 } , format: { with: /\A[a-zA-Z0-9]+\Z/ }
   
   	validates :image ,presence: true 

	has_one_attached :image
	validate :image_type
   

   	
end

private

def image_type
   if image.attached? == false
     errors.add(:image, "is missing!")
   end
   if image.attached? == true
	   if !image.content_type.in?(%('image/jpeg image/png'))
	     errors.add(:image, "needs to be a jpeg or png!")
	   end
	end
end
