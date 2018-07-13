# encoding: UTF-8

require 'spec_helper'
require 'game'

describe Game do 
    describe "#start" do
        # ve se o objeto game chama o metodo puts da sua dependência quando o método game.start é executado.
        it "prints the initial message" do
            #criado uma instancia da classe Game(fase de setup do teste)
            output = double("output")
            game = Game.new(output)

            initial_message = "Bem vindo ao jogo da forca!"
            #verificamos se o método start imprimiu na tela a mensagem inicial do jogo(fase verificação do teste)
            output.should_receive(:puts).with(initial_message)

            #depois chamamos o método start(fase de exercício do teste)
            game.start
        end
    end
end