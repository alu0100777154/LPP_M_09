#Clase numero complejo
require lib/multiply

Class Complejo
    attr_reader :x, :y
    attr_writer :x, :y
    def initialize(x,y)
        @x,@y = x,y
    end
