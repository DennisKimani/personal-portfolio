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
  def create
    @code = Code.new(code_params)
    if @code.save
      redirect_to codes_path
    else
      render :new
    end
  end
  def edit
    @code = Code.find(params[:id])
    render :edit
  end
  def update
    @code = Code.find(params[:id])
    if @code.update(code_params)
      redirect_to codes_path
    else
      render :edit
    end
  end
  def destroy
    @code = Code.find(params[:id])
    @code.destroy
    redirect_to codes_path
  end
end

  private
  def code_params
    params.require(:code).permit(:skill, :link)
  end
end
