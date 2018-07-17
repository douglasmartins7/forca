# encoding: UTF-8

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
  
Então("vejo na tela:") do |text|
    steps %{
        Then the stdout should contain "#{text}"
    }
end