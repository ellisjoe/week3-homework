class PlacesController < ApplicationController

    def index
        @places = Place.limit(100)
    end

    def show
        @place = Place.find_by_id(params[:id])
    end

    def delete
        Place.delete(params[:id])
        redirect_to "/"
    end

    def new
    end

    def create
        place = Place.new
        place.title = params[:title]
        place.photo_url = params[:photo_url]
        place.admission_price = params[:admission_price]
        place.description = params[:description]
        place.save
        redirect_to "/"
    end

    def edit
        @place = Place.find_by_id(params[:id])
    end

    def update
        @place = Place.find_by_id(params[:id])
        @place.title = params[:title]
        @place.photo_url = params[:photo_url]
        @place.admission_price = params[:admission_price]
        @place.description = params[:description]
        @place.save
        redirect_to "/places/#{@place.id}"
    end

end
