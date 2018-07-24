# encoding: UTF-8

require 'spec_helper'
require 'game'

describe Game do 
    #definição de todos os colaboradores do objeto  sob teste no começo do teste usando let . 
     #Mostra as dependência desse objeto
            #let(:output) { double("output") }
            #let(:input)  { double("input") }
    #refatora os dois códigos acima para o let abaixo para tirar a complexidade um pouco
    #ui user interface
    let(:ui) { double("ui").as_null_object }
    subject(:game) { Game.new(ui) }


    describe "#start" do
        # ve se o objeto game chama o metodo puts da sua dependência quando o método game.start é executado.
        it "prints the initial message" do
            initial_message = "Bem vindo ao jogo da forca!"
            #verificamos se o método start imprimiu na tela a mensagem inicial do jogo(fase verificação do teste)
            ui.should_receive(:write).with(initial_message)

            #depois chamamos o método start(fase de exercício do teste)
            game.start
        end
    end

    describe "#ended?" do
        #teste para quando o jogo acabou de começar
        it "returns false when the game just started" do 
           game.should_not be_ended
        end
    end
    #teste abaixo verifica se o jogo pergunta pro jogador o tamanho da palavra a ser sorteada
    describe "#next_step" do
        context "when the game just started" do 
            it "asks the player for length of the word to be raffled" do
                question = "Qual o tamanho da palavra a ser sorteada?"
                ui.should_receive(:write).with(question)
                #verificar se o jogo está lendo o tamanho da palavra que o jogador irá digitar
                ui.should_receive(:read)
                
                game.next_step
            end
        end
        it "finishes the game when the player asks to" do
            player_input = "fim"

            ui.stub(read: player_input)

            game.next_step

            game.should be_ended
        end
    end
end