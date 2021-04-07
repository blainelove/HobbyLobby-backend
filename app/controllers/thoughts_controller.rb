class ThoughtsController < ApplicationController

    def index 
        @thoughts = Thought.order(:id)
        render json: @thoughts
    end

    def show
        @thought= Thought.find(params[:id])
        render json: @thought
    end

    def create
        @thought = Thought.create(thought_params)
        render json: @thought
    end

    def update
        @thought = Thought.find(params[:id])
        @thought.update(thought_params)
        render json:@thought
    end

    def destroy
        @thought = Thought.find(params[:id])
        @thought.destroy
        render json: @thought
    end 
    
    private

    def thought_params
        params.permit(:likes, :description, :image, :user_id, :hobby_id )
    end
end
