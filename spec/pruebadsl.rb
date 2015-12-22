require 'spec_helper'
require 'bib'
require 'bibliografia'



describe Bbl do
    
        
        before :each do
            @dsl = Articulo.new("Nombre") do
                    autores :surname => "Ruiz", 
                    :name => "Jose"

                    asignacion :name => "Navidad", 
                    :volumen => 5, 
                    :issue => 2
                    
                    title "Navidad"
                    
            end
        end
        
        it "la clase Articulo existe"do
            expect(@dsl).not_to eq(nil)
        end
        
        it "tiene un nombre" do
            expect(@dsl.name).to eq("Jose")
        end
        
        it "Comprobar que existe un autor"do
            expect(@dsl.autores).to eq([" (Ruiz Jose)"])
        end
        
        
        it "Debe existir un titulo para el articulo" do
            expect(@dsl.titulo).to eq("Navidad")
        end
        
    
    end
