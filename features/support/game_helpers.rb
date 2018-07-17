module GameHelpers
    def start_new_game
        steps %{
            When I run 'forca' interactively
        }
    end
end

#esse metodo traz esse modulo para o contexto do step definitions
World(GameHelpers)