class ContentsController < ApplicationController
  def index
    @contents = Content.all
    render :index
  end
  def show
    @content = Content.find(params[:id])
    render :show
  end
  def new
    @content = Content.new
    render :new
  end
  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to contents_path
    else
      render :new
    end
  end
  def edit
    @content = Content.find(params[:id])
    render :edit
  end
  def update
    @content = Content.find(params[:id])
    if @content.update(content_params)
      redirect_to contents_path
    else
      render :edit
    end
  end
  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to contents_path
  end

  private
  def content_params
    params.require(:content).permit(:title, :description)
  end
end
