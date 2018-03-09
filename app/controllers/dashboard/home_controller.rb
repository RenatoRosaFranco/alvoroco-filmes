module Dashboard
  class HomeController <:: ApplicationController
    before_action :authenticate_user!
  
    def index
  	  @contact  = Contact.new
  	  @projects = Project.all 
  	  @movies   = Movie.all 
    end
  end
end
