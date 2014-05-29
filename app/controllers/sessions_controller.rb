class SessionsController < ApplicationController

	#touch app/views/sessions/new.html.erb to create new page
	def new 

	end

	def create
		@user = User.authentication(params[:login],params[:password])
		if @user
			session[:user_id] = @user.id
			flash[:notice] = "Weclome #{@user.login}"
			redirect_to posts_path
		else
			flash[:notice] = "The login failed"
			redirect_to new_session_path
		end
	end
end
