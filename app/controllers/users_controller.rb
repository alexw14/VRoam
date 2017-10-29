class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        # Provide the model instance to the form_for helper
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Thank you for signing up!"
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end