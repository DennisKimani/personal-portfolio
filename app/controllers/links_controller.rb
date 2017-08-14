class LinksController <ApplicationController
 def index
   @links = Link.all
   render :index
 end
end
