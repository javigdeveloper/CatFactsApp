class BurgersController < ApplicationController
    def index
        @burgers = Burger.all
    end
    def show
        @burger = Burger.find(params[:id])
    end
    def new
        @burger = Burger.new
    end
    def edit
        @burger = Burger.find(params[:id])
    end

    def create
        burger = Burger.create(burger_params)
        redirect_to burger
    end
    def update
        @burger = Burger.find(params[:id])
        @burger.update(burger_params)
        redirect_to @burger
    end 
    def destroy
        Burger.find(params[:id]).destroy

        redirect_to burgers_path
    end

    private
    def burger_params
        params.require(:burger).permit(:name, :price, :pic)
    end

end
