class ProductChannel < AplicationCable::Channel

	def subcribed
		stream_from "product_#{params[:room]}"
	end

end	