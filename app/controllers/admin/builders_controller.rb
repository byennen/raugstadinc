class Admin::BuildersController < ApplicationController
  layout 'admin/layouts/admin'
  
  def index
    @builders = Builder.all
  end
  
  def new
    @builder = Builder.new
  end
  
  def create
    @builder = Builder.new(params[:builder])
    if @builder.save
      flash[:notice] = "Successfully created builder."
      redirect_to admin_builders_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @builder = Builder.find(params[:id])
  end
  
  def update
    @builder = Builder.find(params[:id])
    if @builder.update_attributes(params[:builder])
      flash[:notice] = "Successfully updated builder."
      redirect_to admin_builders_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @builder = Builder.find(params[:id])
    @builder.destroy
    flash[:notice] = "Successfully destroyed builder."
    redirect_to builders_url
  end
end
