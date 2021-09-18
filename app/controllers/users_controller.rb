module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: %i[show update destroy]

      # GET /users
      def index
        @users = User.all
        json_response(@users)
      end

      # POST /users
      def create
        @user = User.create!(user_params)
        json_response(@user, :created)
      end

      # GET /users/:id
      def show
        json_response(@user)
      end

      # PUT /users/:id
      def update
        @user.update(user_params)
        head :no_content
      end

      # DELETE /users/:id
      def destroy
        @user.destroy
        head :no_content
      end

      private

      def user_params
        params.require(:user).permit(:username, :password)
      end

      def set_user
        @user = User.find(params[:id])
      end
    end
  end
end
