class PlacesController < ApplicationController

    def index
        @places = Place.limit(100)
    end

    def show
        @place = Place.find_by_id(params[:id])
        @reviews = Review.where("place_id = #{@place.id}").last(100).reverse
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
        place.admission_price = params[:admission_price].to_f * 100
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
        @place.admission_price = params[:admission_price].to_f * 100
        @place.description = params[:description]
        @place.save
        redirect_to "/places/#{@place.id}"
    end

    def review
        review = Review.new
        review.rating = params[:rating]
        review.review = params[:review]
        review.place_id = params[:id].to_i
        review.save
        redirect_to "/places/#{params[:id]}"
    end

end
