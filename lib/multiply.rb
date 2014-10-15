#multiply.rb
require complejo
def *(var)
    if var.is_a(Numeric)
        @x,@y = var*@x,var*@y
    elsif var.is_a(Complejo)
        @x,@y = ((var.x * @x) - var.y*@y),((var.y * @x) -(var.x * @y))
    end
end