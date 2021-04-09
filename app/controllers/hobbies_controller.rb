class HobbiesController < ApplicationController
    def index 
        @hobbies = Hobby.order(:id)
        render json: @hobbies
    end

    def show
        @hobby = Hobby.find(params[:id])
        render json: @hobby
    end

    def create
        @hobby = Hobby.create(hobby_params)
        render json: @hobby
    end

    def update
        @hobby = Hobby.find(params[:id])
        @hobby.update(hobby_params)
        render json:@hobby
    end

    def destroy
        @hobby = Hobby.find(params[:id])
        @hobby.destroy
        render json: @hobby
    end 
    
    private

    def hobby_params
        params.permit(:name, :image, :description, :user_id)
    end
end
