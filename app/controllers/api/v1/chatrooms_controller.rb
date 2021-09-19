module Api
  module V1
    class ChatroomsController < ApplicationController
      before_action :set_chatroom, only: %i[show update destroy]

      # GET /chatrooms
      def index
        @chatrooms = Chatroom.all
        json_response(@chatrooms)
      end

      # POST /chatrooms
      def create
        @chatroom = Chatroom.create!(chatroom_params)
        json_response(@chatroom, :created)
      end

      # GET /chatrooms/:id
      def show
        json_response(@chatroom)
      end

      # PUT /chatrooms/:id
      def update
        @chatroom.update(chatroom_params)
        head :no_content
      end

      # DELETE /chatrooms/:id
      def destroy
        @chatroom.destroy
        head :no_content
      end

      private

      def chatroom_params
        params.require(:chatroom).permit(:name)
      end

      def set_chatroom
        @chatroom = Chatroom.find(params[:id])
      end
    end
  end
end
