class EssController < ApplicationController
def index
    @es = Es.all
end


def new
    @ess = Es.new
end



def create
    ess = Es.new(es_params)
    if es.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  private
  def es_params
    params.require(:entryseat).permit(:date)
  end



end
