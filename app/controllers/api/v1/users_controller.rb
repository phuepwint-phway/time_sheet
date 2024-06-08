class Api::V1::UsersController < ApplicationController
    # before_action :set_actor, only: [:show, :create, :update, :destroy]

    def index
        users = User.all
        render json: users
    end
end
