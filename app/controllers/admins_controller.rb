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
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to admins_path
    else
      render :new
    end
  end
  def edit
    @admin = Admin.edit
    render :edit
  end
  def update
    @admin = Admin.find(params[:id])
    if @admin.update(admin_params)
      redirect_to admins_path
    else
      render :edit
    end
  end

  private
  def admin_params
    params.require(:admin).permit(:title, :description)
  end
end
