# encoding: UTF-8

require 'spec_helper'
require 'game'

describe Game do 
    #definição de todos os colaboradores do objeto  sob teste no começo do teste usando let . 
     #Mostra as dependência desse objeto
    let(:output) { double("output") }

    subject(:game) { Game.new(output) }

    describe "#start" do
        # ve se o objeto game chama o metodo puts da sua dependência quando o método game.start é executado.
        it "prints the initial message" do
            initial_message = "Bem vindo ao jogo da forca!"
            #verificamos se o método start imprimiu na tela a mensagem inicial do jogo(fase verificação do teste)
            output.should_receive(:puts).with(initial_message)

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

    describe "#next_step" do
        context "when the game just started" do 
            it "ask the player for length of the word to be raffled" do
                question = "Qual o tamanho da palavra a ser sorteada?"
                output.should_receive(:puts).with(question)

                game.next_step
            end
        end
    end
end