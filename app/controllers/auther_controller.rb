class AutherController < ApplicationController
  def show
  	@auther_name = CGI::unescape(params[:authername])
	
  	if Book.find_by(authername: @auther_name)
		@books = Book.where(authername:  @auther_name)
	else
		redirect_to '/404'
	end
  end

end
