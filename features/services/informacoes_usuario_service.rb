class InformacoesUsuarioService
    include HTTParty

    def retornar_informacoes_do_usuario
        self.class.get('https://jsonplaceholder.typicode.com/users')
    end
end