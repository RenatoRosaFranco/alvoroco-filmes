module Dashboard
	class ProjectsController < HomeController
		respond_to :html, :js, :json
		before_action :set_project, only: [:show, :edit, :update, :destroy]
		
		def index
		   @projects = Project.all 
		end

		def new
		   @project = Project.new
		end

		def show
		end

		def create
		   @project = current_user.projects.build(project_params)
		   @project.save 
		   respond_with(:dashboard, @project)
		end

		def update
		   @project.update(project_params)
		   @project.save
		   respond_with(:dashboard, @project)
		end

		def destroy
		   @project.destroy 
		   respond_with(:dashboard, @project)
		end

		private

		def set_project
		   @project = Project.find(params[:id])
		end

		def project_params
		   params.require(:project).permit(:name, :description, :tags)
		end

	end
end