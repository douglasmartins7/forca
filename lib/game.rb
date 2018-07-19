# encoding: UTF-8

class Game
    #deixamos explícito que o objeto game depende de algum objeto que sabe imprimir strings
     #fizemos isso ao injetar essa dependência no construtor da classe Game
    def initialize(output = STDOUT)
        @output = 
        #vamos salvar a informação se o jogo terminou ou não em uma variável de instância
         #chamada @ended, e utilizá-la para implementar o método Game#ended?
        @ended = false
    end

    def ended?
        @ended
    end

    def start
        initial_message = "Bem vindo ao jogo da forca!"
        @output.puts initial_message
    end

    def next_step
        @output.puts("Qual o tamanho da palavra a ser sorteada?")
    end
end