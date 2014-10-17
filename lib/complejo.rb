#Clase numero complejo
require 'mathn'

class Complejo
    attr_reader :x, :y
    attr_writer :x, :y
    def initialize(x, y)
        @x, @y = x, y
    end
    def *(var)
        if var.is_a? Numeric #interrogación en lugar de paréntesis
            Complejo.new(var*@x, var*@y)
        elsif var.is_a? Complejo
            Complejo.new(((var.x*@x)-(var.y*@y)),((var.y*@x)+(var.x*@y)))
        end
    end
    def /(var)
           Complejo.new((Rational(((var.x*@x)+(var.y*@y)),((var.x)**2+(var.y)**2))), 
                        Rational(((var.x*@y)-(var.y*@x)),((var.x)**2+(var.y)**2)))
    end
    def +(var)
            Complejo.new(var.x + @x, var.y + @y)
    end
    def -(var)
             Complejo.new(@x - var.x, @y - var.y)
    end
    def to_s
        puts "#{@x},#{@y}i" 
    end 
end