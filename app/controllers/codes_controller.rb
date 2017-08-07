class CodesController < ApplicationController
  def index
    @codes = Code.all
    render :index
  end
  def show
    @code =Code.find(params[:id])
    render :show
  end
  def new
    @code = Code.new
    render :new
  end
end
