require "pry"
class Shopping_cart
  def initialize
    @cart = Hash.new
  end

  def add_item
    puts "What would you like to add to the cart?"
    item = gets.chomp
    @cart[item] = rand(10)
  end

  def print
    puts @cart
  end

  def remove_item(item)
    @cart.delete(item)
  end

  def subtotal
    @total = 0.0
    puts "Cart contains: #{@cart.keys.join(", ")}"
    @cart.each do |_, value|
      @total += value
    end

    puts "Your subtotal before tax is #{@total}"
    @total *= 0.9 if @total >= 100
    puts @total
  end

  def totalup(tax_rate)
    @after_tax = @total * (1.0 + tax_rate)
    puts "Your total with tax is #{@after_tax}"
  end

end

mamas_cart = Shopping_cart.new
mamas_cart.add_item
mamas_cart.print
mamas_cart.subtotal
#binding.pry
mamas_cart.totalup(0.06)
