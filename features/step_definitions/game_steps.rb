# encoding: UTF-8

Dado("que comecei um jogo") do
  start_new_game 
end

Quando("começo um novo jogo") do
  #para começar um jogo executando o binário forca, usamos o step definition 
   #"When I run 'command' interactively" do aruba
  #steps %{
  #    When I run 'forca' interactively
  #}
  start_new_game
end

Quando("escolho que a palavra a ser sorteada deverá ter {string} letras") do |number_of_letters|
  steps %{
      When I type "#{number_of_letters}"
  }   
end
  
Então("o jogo termina com a seguinte mensagem na tela:") do |text|
    #esse step definition verifica se um texto foi impresso no STDOUT e também verifica se o exit status do processo
     #sob teste foi de sucesso
    steps %{
        Then it should pass with:
        """
        #{text}
        """
    }
end