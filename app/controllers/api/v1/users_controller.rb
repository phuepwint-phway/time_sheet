class Api::V1::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        users = User.all
        render json: users
    end

    def show
        render json: @user
    end

    def create
        user = User.find(params[:id])
        render json: user, status: :created
    end

    def update
        @user.update!(user_params)
        render json: @user
    end

    def destroy
        @user.update!(deleted_at: Time.now())
    end

    private
        def set_user
            @user = User.find(params[:id])
            unless @user
                render json: {error: 'User not found' }, status: :not_found
            end
        end

        def user_params
            params.require(:user).permit(:user_name, :user_email, :password, :role)
        end
end
