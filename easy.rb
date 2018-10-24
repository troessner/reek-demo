class ShoppingCart # IrresponsibleModule smell

  # Attribute smell
  attr_writer :total_prize
  # Class variable smell
  @@tax_rate = 21.0

  # UncommunicativeMethodName smell and UnusedParameter smell
  def checkout1(rebate)
    # UncommunicativeVariable smell
    x = 'Some string'
    # DuplicateMethodCall and InstanceVariableAssumption smell
    @total_prize = @items.prize + @items.prize
  end

  # MissingSafeMethod smell
  def do_it!
    # ...
  end
end
