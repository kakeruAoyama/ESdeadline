class EntryseatsController < ApplicationController
def index
@entryseat = Entryseat.all
@tags = Tag.all
@entryseat= params[:name].present? ? Tag.find(params[:name]).entryseats: Entryseat.all
end


def new
@entryseat = Entryseat.new
end



def create
entryseat = Entryseat.new(entryseat_params)
if entryseat.save
    redirect_to :action => "index"
else redirect_to :action => "new"

    
end
end
def show
@entryseat = Entryseat.find(params[:id])
end
private
def entryseat_params
params.require(:entryseat).permit(:date)
end

end
def entryseat_params
    params.require(:entryseat).permit(:date, tag_ids: [])
end
