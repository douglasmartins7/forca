# encoding: UTF-8

Quando("começo um novo jogo") do
   #para começar um jogo executando o binário forca, usamos o step definition 
    #"When I run 'command' interactively" do aruba
   steps %{
       When I run 'forca' interactively
   }
end
  
Então("vejo na tela:") do |text|
    steps %{
        Then the stdout should contain "#{text}"
    }
end