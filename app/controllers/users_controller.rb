class UsersController < ApplicationController
	before_action :current_user, only: [:show, :edit, :update, :destroy]
	def index
		@users=User.order('created_at DESC')
	end

	def show
	end

	def new 
		@user=User.new
	end

	def create
		 @user = User.new(user_params)
		 if @user.save
		 	redirect_to users_path
		 else
		 	render "new"
		 end
	end

	def edit
	end

	 def update
    	if @user.update(user_params)
    		redirect_to users_path
    	else
		 	render "edit"
    	end
	end

	def destroy
    	@user.destroy

    	redirect_to users_path
	end


	def search
		exp= Regexp.new(params[:search], 'i')
		@results=[]
		User.all.each do |user|
			if user.user_name.match(exp) || user.user_email.match(exp)
				@results<<user
			end
		end
		@users=User.all
		render "index"
	end


	private

	def current_user
		@user= User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:user_name, :user_email)
	end

	

end
