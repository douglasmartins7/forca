# encoding: UTF-8

class Game
    #deixamos explícito que o objeto game depende de algum objeto que sabe imprimir strings
     #fizemos isso ao injetar essa dependência no construtor da classe Game
    def initialize(output = STDOUT)
        @output = output
    end

    def start
        initial_message = "Bem vindo ao jogo da forca!"
        @output.puts initial_message
    end
end