#multiply.rb
require complejo
def *(var)
    if var.is_a(Numeric)
        Complejo.new(var*@x,var*@y)
    elsif var.is_a(Complejo)
        Complejo.new( ( (var.x * @x) - (var.y*@y) ), ( (var.y * @x) + (var.x * @y) ) )
    end
end

def /(var)
   if var.is_a(Complejo)
       Complejo.new( (( (var.x * @x) + (var.y*@y) / var.x**2 + var.y**2 )) , 
                ( (var.x * @y) - (var.y * @x)  / var.x**2 + var.y**2  ) )
    else
        puts "Solo se pueden dividir complejos entre complejos"
   end 
end