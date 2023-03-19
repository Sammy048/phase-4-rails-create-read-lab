class PlantsController < ApplicationController
    def create
        plants = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plants
    end

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plants = Plant.find_by(id: params[:id])
        if plants
            render json: plants
          else
            render json: { error: "Plant not found" }, status: :not_found
        end
    end
end
