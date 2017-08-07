class CodesController < ApplicationController
  def index
    @codes = Code.all
    render :index
  end
end
