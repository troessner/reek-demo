# Harder to fix code smells
class ShoppingCart
  # ControlCouple smell
  def generate_invoice(format)
    if format == :pdf
      render_pdf
    else
      render_default
    end
  end

  # NestedIterators smell
  def print_description
    # RepeatedConditional
    puts "Too few items" if items.size < 5
    items.each do |item|
      next if item.respond_to?(:disabled)
      item.descriptions.each do |description|
        puts description
      end
    end
  end

  def compare_with(other_items)
    # RepeatedConditional
    puts "Too few items" if items.size < 5
    # NilCheck smells
    compare(other_items) unless other_items.nil?
  end

  def discount?
    # RepeatedConditional
    puts "Too few items" if items.size < 5
  end
end
