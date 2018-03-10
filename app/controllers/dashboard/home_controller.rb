module Dashboard
  class HomeController <:: ApplicationController
    layout 'dashboard'
    before_action :authenticate_user!
  
    def index
  	  @contact  = Contact.new
  	  @projects = Project.all 
  	  @movies   = Movie.all 
    end
  end
end
