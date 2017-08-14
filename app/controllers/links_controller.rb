class LinksController <ApplicationController
 def index
   @links = Link.all
   render :index
 end
def show
  @link = Link.find(params[:id])
  render :show
end 
end
