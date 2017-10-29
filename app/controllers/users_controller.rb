class UsersController < ApplicationController
    def index
        @Users = User.all
    end

    def new
        
    end
end