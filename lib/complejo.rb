#Clase numero complejo

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
           Complejo.new(((var.x*@x)+(var.y*@y)/(var.x**2+var.y**2)), 
                        ((var.x*@y)-(var.y*@x)/(var.x**2+var.y**2)))
    end
    def +(var)
            Complejo.new(var.x + @x, var.y + @y)
    end
    def -(var)
             Complejo.new(@x - var.x, @y - var.y)
    end  
end

    @origen=Complejo.new 0,0
    @unidad=Complejo.new 1,1
    
    x=@unidad+@unidad
    
    y=@unidad*2-@unidad
    
    z=(Complejo.new 2,5)*(Complejo.new 3,4)
    
    w=(Complejo.new 3,2)/(Complejo.new 1,-2)
    
    puts x.x
    puts x.y
    
    puts y.x
    puts y.y
    
    puts z.x
    puts z.y
    
    puts 'w'
    puts w.x
    puts w.y
    
