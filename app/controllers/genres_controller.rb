class GenresController < ApplicationController
    before_action :select_genre, only: [:show, :edit, :update]

    def show
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
    end

    def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end


    private

        def genre_params
            params.require(:genre).permit!
        end

        def select_genre
            @genre = Genre.find(params[:id])
        end
end
