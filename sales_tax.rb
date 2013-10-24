# 10% of sales tax
#Improt duty is additional 5%
#n 
class Product
	
	def initialize(quantity, name, price)
	@quantity = quantity
	@name = name
	@price = price
	end
	
	def tax_rate
	0.10
	end

	def sales_tax
		(tax_rate * subtotal) 
	end

	def total
		(sales_tax + subtotal)
	end

	def subtotal
		(@quantity * @price)
	end

end

#input1
music = Product.new(1,"music CD", 12.49)
#music.sales_tax
#music.total


#input2


#input3

perfume =Product.new(1, "bottle of perfume", 20.89)
#perfume.sales_tax
#perfume.total





	