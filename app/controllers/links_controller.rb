class LinksController < ApplicationController
  def index
    @links = Link.all
    render :index
  end

  def show
    @link = Link.find(params[:id])
    render :show
  end

  def new
    @code = Code.find(params[:code_id])
    @link = @code.links.new
  end

  def create
    @code = Code.find(params[:code_id])
    @link = @code.links.new(link_params)
    if @link.save
      redirect_to code_path(@link.code)
    else
      render :new
    end
  end

  def edit
    @code = Code.find(params[:code_id])
    @link = Link.find(params[:id])
  end

  def update
    @code = Code.find(params[:code_id])
    @link = @code.links.find(params[:id])
    if @link.update(link_params)
      redirect_to code_path(@link.code)
    else
      render :edit
    end
  end

  def destroy
    @code = Code.find(params[:code_id])
    @link = @code.links.find(params[:id])
    @link.destroy
    redirect_to @code
  end

  private
  def link_params
    params.require(:link).permit(:name, :description, :github_link, :launch)
  end
end
