class ProjectsController < ApplicationController
  def index
  end

  def list
    
    @project = Project.create(
    name: params[:name],
    description: params[:description],
    date_start: params[:created_at],
    date_finish: params[:finish_date],
    state: params[:state]
   )
  
    @filtrado=params[:filter]
    if @filtrado == "empty"
      @projects = Project.all.order('created_at DESC') 
    else  
      @projects = Project.all.order('created_at DESC').where(state: @filtrado) 
    end
  end
end