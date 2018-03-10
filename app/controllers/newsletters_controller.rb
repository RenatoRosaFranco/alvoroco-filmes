class NewslettersController < ApplicationController
   def create
   	 @newsletter = Newsletter.create(newsletter_params)
   	 respond_with(:root, notice: 'Inscrito com sucesso.')
   end

   private

   def newsletter_params
   	params.require(:newsletter).permit(:name, :email)
   end
end