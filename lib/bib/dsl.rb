
require 'bibliografia'
require_relative 'apa'


class Articulo < Bbl::Bbl
    attr_accessor :name, :autores, :journal, :titulo
    
    
    def initialize(name,&block)
        @name = name
        @autores = []
        @journal = []
        instance_eval &block
    end

    
    def autores(datos = {})
       aux = " (#{datos[:surname]} #{datos[:name]})" 
            if datos[:surname] && datos[:name]
       @autores << aux
   end
    end


    def asignacion(datos = {})
        aux = " (#{datos[:name]} #{datos[:volumen]} #{datos[:issue]})"  
                if datos[:issue] && datos[:name] && datos[:volumen]
        @journal << aux
       
                end
    end
    
    
    def title(dat)
        @titulo = dat
    end
    
end
    