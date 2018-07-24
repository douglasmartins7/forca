# encoding: UTF-8

require_relative 'cli_ui'

class Game
    #deixamos explícito que o objeto game depende de algum objeto que sabe imprimir strings
     #fizemos isso ao injetar essa dependência no construtor da classe Game
    def initialize(ui = CliUi.new)
        #@output = output
          #injetar a dependência input, a qual a implementação default vair ser o STDIN e
           #utilizá-la no método next_step para ler e entrada do jogo
        #@input = input
          #vamos salvar a informação se o jogo terminou ou não em uma variável de instância
           #chamada @ended, e utilizá-la para implementar o método Game#ended?
        @ui = ui
        @ended = false
    end

    def start
        initial_message = "Bem vindo ao jogo da forca!"
        @ui.write initial_message
    end

    def ended?
        @ended
    end

    def next_step
        @ui.write("Qual o tamanho da palavra a ser sorteada?")
        player_input = @ui.read.strip

        if player_input == "fim"
            @ended = true
        end
    end
end