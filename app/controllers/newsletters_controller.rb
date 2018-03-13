class NewslettersController < ApplicationController
   
   # Create
   # @implemented
   def create
   	 @newsletter = Newsletter.create(newsletter_params)
   	 respond_with(:root, notice: 'Inscrito com sucesso.')
   end

   # Cancel
   # @implemented
   def cancel
   	 @newsletter.find_by_toke(params[:token])
   	 if (@newsletter)
   	 	@newsletter.cancel
   	    respond_with(:root. notice: 'Assinatura cancelada com sucesso.')
   	 else
   	 	respond_with(:root, notice: 'Falha ao cancelar assinatura, tente novamente')
   	 end
   end

   private

   def newsletter_params
   	params.require(:newsletter).permit(:name, :email)
   end
end