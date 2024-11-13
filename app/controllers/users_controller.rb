class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        u = User.new(uid: params[:user][:uid], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation], mail: params[:user][:mail])
        u.save
        redirect_to root_path
    end
    
    def destroy
        User.find(params[:id]).destroy
        redirect_to users_path
    end
end
