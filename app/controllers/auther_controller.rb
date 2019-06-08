class AutherController < ApplicationController
  def show
	if Book.find_by(authername: params[:authername])
		@auther = params[:authername]
		@books = Book.where(authername:  @auther)
	else
		redirect_to '/404'
	end
  end

end
