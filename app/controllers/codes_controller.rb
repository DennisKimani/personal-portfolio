class CodesController < ApplicationController
  def index
    @codes = Code.all
    render :index
  end
  def show
    @code =Code.find(params[:id])
    render :show
  end
end
