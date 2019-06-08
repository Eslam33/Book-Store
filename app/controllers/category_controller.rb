class CategoryController < ApplicationController
  def show
  	if Category.find_by(id: params[:categoryid])
  		@category_id = params[:categoryid]
  		@category = Category.find(@category_id)
  		@books = Book.where(category_id: @category_id)
  	else
  		redirect_to '/404'
  	end
  end
end
