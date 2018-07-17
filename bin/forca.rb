#!/usr/bin/env ruby

#O binário só inicia o jogo e imprime a mensagem inicial
$:.unshift File.join(File.dirname(__FILE__),"..","lib")

require 'game'

game = Game.new
game.start

#após o jogo ser inicializado e mostrar a mensagem inicial, ele entra num loop e fica rodando
 #o proximo passo do jogo até o jogo terminar, utilizando o metodo Game#ended?. para controlar o 
 # o loop é o método Game#next_step para executar o passo seguinte do jogo.
while not game.ended?
    game.next_step
end


