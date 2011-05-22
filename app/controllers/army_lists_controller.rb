class ArmyListsController < ApplicationController
  def index
    @army_lists = ArmyList.all
  end

  def show
    @army_list = ArmyList.find(params[:id])
  end

  def new
    @army_list = ArmyList.new
  end

  def create
    @army_list = ArmyList.new(params[:army_list])
    if @army_list.save
      redirect_to @army_list, :notice => "Successfully created army list."
    else
      render :action => 'new'
    end
  end

  def edit
    @army_list = ArmyList.find(params[:id])
  end

  def update
    @army_list = ArmyList.find(params[:id])
    if @army_list.update_attributes(params[:army_list])
      redirect_to @army_list, :notice  => "Successfully updated army list."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @army_list = ArmyList.find(params[:id])
    @army_list.destroy
    redirect_to army_lists_url, :notice => "Successfully destroyed army list."
  end
end
