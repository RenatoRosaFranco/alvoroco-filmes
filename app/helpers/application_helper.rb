module ApplicationHelper
	def has_errors?(model)
	   render partial: 'shared/has_errors', locals: {model: model}
	end

	def pagination(collection)
	  render partial: 'shared/pagination', locals: {collection: collection}
	end
end
