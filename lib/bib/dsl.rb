
require 'bibliografia'
require_relative 'apa'


class Article < Bbl::Bbl
    attr_accessor :name, :autores, :journal, :titulo
    
    
    def initialize(name,&block)
        @name = name
        @autores = []
        @journal = []
        instance_eval &block
    end

    
    def autores(datos = {})
       aux = " (#{datos[:surname]} #{datos[:name]})" if datos[:surname] && datos[:name]
       @autores << aux
       @autores
    end


    def medio(datos = {})
        aux = " (#{datos[:name]} #{datos[:volumen]} #{datos[:issue]})" if datos[:issue] && datos[:name] && datos[:volumen]
        @journal << aux
        @journal
    end
    
    
    def title(dat)
        @titulo = dat
    end
    
    

end