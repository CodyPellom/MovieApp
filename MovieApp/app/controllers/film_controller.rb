class FilmController < ApplicationController
   

    def index
            @films = Film.all #This is an Instance Variable
     end
    
    def show
        @film = Film.find(params[:id])
    end
    
    def new
        @film = Film.new
    end
    
    def create
        @new_film = Film.create(film_params)
        redirect_to("/films/#(new_film.id")
    end
    def edit
        @film = Film.find(params[:id])
    end
    
    def update
        @film = Film.find(params[:id])
        @film.update(film_params)
        redirect_to "/films/"
    end
        
    def destroy
        Film.find(params[:id]).destroy
        redirect_to "/films"
    end
    private
    def film_params
        params.require(:film).permit(:name, :photo_url, :nationality)
    end
 
    
    
end
