class Order < ApplicationRecord
	belongs_to :user
	has_many :order_items
	

	before_save :set_subtotal



	def subtotal
		order_items.collect{|order_item| order_item.valid? ? order_item.quantity * order_item.unit_price : 0}.sum
	end

	# converting Ghana cedis into dollar-cents
	def subtotal_in_cents
		(self.subtotal * 100 * 0.17).to_i
	end



	private
		def set_subtotal
			self[:subtotal] = subtotal
		end

end
