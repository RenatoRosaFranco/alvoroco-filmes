class ProjectsController < ApplicationController
	respond_to :html, :json, :js 
	before_action :set_project, only: [:show]

	def index
	  @projects =  Project.friendly.all 
	   .paginate(page: params[:page], per_page: 9)
	  respond_with(@projects)
	end

	def show
	  respond_with(@project)
	end

	private

	def set_project
	  @project = Project.friendly.find(params[:id])
	end
end