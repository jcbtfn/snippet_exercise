require "make_snippet"

RSpec.describe "make_snippet method" do 
    it "given an empty string return" do
        result = make_snippet("")
        expect(result).to eq "There is no string"
    end
    it "given an string smaller than 5 words" do
        result = make_snippet("Hola, ¿qué tal?")
        expect(result).to eq "Hola, ¿qué tal?"
    end
    it "given an string of 5 words" do
        result = make_snippet("Hola, ¿qué tal estás hoy?")
        expect(result).to eq "Hola, ¿qué tal estás hoy?"
    end
    it "given an string greater than 5 words" do
        result = make_snippet("Hola, soy una frase con más de cinco palabras")
        expect(result).to eq "Hola, soy una frase con..."
    end
    it "given an string greater than 5 words" do
        result = make_snippet("Madre mía fuerte locura más grande de código")
        expect(result).to eq "Madre mía fuerte locura más..."
    end
end