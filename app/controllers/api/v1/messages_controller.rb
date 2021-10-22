module Api
  module V1
    class MessagesController < ApplicationController
      before_action :set_message, only: %i[show update destroy]

      # GET /messages
      def index
        @messages = Message.all
        render json: @messages
      end

      # POST /messages
      def create
        @message = Message.create!(message_params)
        render json:  :created
      end

      # GET /messages/:id
      def show
        render json: @message
      end

      # PUT /messages/:id
      def update
        @message.update(message_params)
        head :no_content
      end

      # DELETE /messages/:id
      def destroy
        @message.destroy
        head :no_content
      end

      private

      def message_params
        params.require(:message).permit(:content)
      end

      def set_message
        @message = Message.find(params[:id])
      end
    end
  end
end
