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

	def to_s
		"#{@quantity} #{@name} : #{total}"
	end
end

class Exempt < Product
	def tax_rate
		0
	end
end

class Imported < Product
	def tax_rate
		super + 0.05
	end
end

class ImportedExempt < Product
def tax_rate
	0.05
end
	end

	class Basket
	def initialize
		@container = []
	end
	def add_product(product)
		@container << product
	end
	def find_total_sales_tax
		tax_total = 0.0
		@container.each do |x|
			tax_total = x.sales_tax
		end
		end
		
	def find_total
		b_total == 0.0
		@container.each do |y|
			b_total = y.total
		end
	end
end
#input1
book = Exempt.new(1, "book", 12.49)

music = Product.new(1,"music CD", 14.99)

chocolate_bar = Exempt.new(1, "chocolate bar", 0.85)


#input2

imported_perfuma = Imported.new(1, "imported bottle of perfume", 54.65)
imported_chocolatesb = ImportedExempt.new(1, "imported box of chocolates", 10.50)

#input3
imported_perfum = Imported.new(1, "imported bottle of perfume", 32.19)
perfume =Product.new(1, "bottle of perfume", 20.89)
pills = Exempt.new(1, "packet of headache pills", 9.75)
imported_chocolates = ImportedExempt.new(1, "imported box of chocolates", 11.85)


puts "--------------------------"
basket1 = Basket.new
basket1.add_product(book)
basket1.add_product(music)
basket1.add_product(chocolate_bar)
puts "Output 1:"
puts basket1.find_total_sales_tax

puts "--------------------------"
basket2 = Basket.new
basket2.add_product(imported_perfuma)
basket2.add_product(imported_chocolatesb)
puts "Output 2:"
puts basket2.find_total_sales_tax

puts "--------------------------"
basket3 = Basket.new
basket3.add_product(imported_perfum)
basket3.add_product(perfume)
basket3.add_product(pills)
basket3.add_product(imported_chocolates)
puts "Output 3:"
puts basket2.find_total_sales_tax


