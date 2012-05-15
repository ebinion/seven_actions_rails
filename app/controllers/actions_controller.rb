class ActionsController < ApplicationController
  
  def index
    @actions = ActionList.all
  end
  
  def new
    @action = ActionList.new
  end
  
  def create
    ActionList.create :name => params[:action_list][:name], :method => params[:action_list][:method]
    redirect_to action_lists_url
  end
  
  def show
    @action = ActionList.find params[:id]
  end
  
  def edit
    @action = ActionList.find params[:id]
  end
  
  def update
    @action = ActionList.find params[:id]
    @action.name = params[:action_list][:name]
    @action.method = params[:action_list][:method]
    @action.save
    
    redirect_to action_list_url(params[:id])
  end
  
  def destroy
    @action = ActionList.find params[:id]
    @action.destroy
    
    redirect_to action_lists_url
  end
  
end