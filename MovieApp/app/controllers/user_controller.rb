class UsersController < ApplicationController
   

        def index
                @users = Users.all #This is an Instance Variable
         end
        
        def show
            @user = Users.find(params[:id])
        end
        
        def new
            @user = Users.new
        end
        
        def create
            @new_user = Users.create(user_params)
            redirect_to("/users/#(new_user.id")
        end
        def edit
            @user = Users.find(params[:id])
        end
        
        def update
            @user = Users.find(params[:id])
            @user.update(user_params)
            redirect_to "/users/"
        end
            
        def destroy
            Users.find(params[:id]).destroy
            redirect_to "/users"
        end
        private
        def user_params
            params.require(:user).permit(:name, :photo_url, :nationality)
        end
     
        
        
    end
