class ItgirlsController < ApplicationController
  def new
    @itgirl = Itgirl.new

  end

  def create
    itgirl = Itgirl.create itgirl_params
    # raise 'hell'

    redirect_to "/itgirls/#{itgirl.id}"
  end

  def edit
    @itgirl = Itgirl.find params['id']

  end

  def update
    Itgirl.update itgirl_params
    redirect_to "/itgirls/#{params["id"]}"
  end

  def index
    @itgirls = Itgirl.all
  end

  def show
    # raise 'hell'
    @itgirl = Itgirl.find params["id"]
  end


  def destroy
    Itgirl.find( params["id"] ).destroy
    redirect_to "/itgirls"
  end

  private
  def itgirl_params
    params.require(:itgirl).permit(:name, :dob, :nationality, :period, :image)
  end
end
