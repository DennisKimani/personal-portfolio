class AdminsController < ApplicationController
  def index
    @admins = Admin.all
    render :index
  end
  def show
    @admin = Admin.find(params[:id])
    render :show
  end
  def new
    @admin = Admin.new
    render :new
  end
end
