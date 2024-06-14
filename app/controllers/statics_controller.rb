class StaticsController < ApplicationController

def index
    @entryseat = Entryseat.all
end
def show
    @entryseat = Entryseat.find(params[:id])
end
    private
def entryseat_params
    params.require(:entryseat).permit(:date)
end
        
        
end
