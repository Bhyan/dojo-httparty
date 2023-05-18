Quando('realizar a consulta no endpoint de informações de usuário') do
    @retornar_informacoes_do_usuario = InformacoesUsuarioService.new.retornar_informacoes_do_usuario
end
  
Então('deve retornar o status code {int}') do |status_code|
    expect(@retornar_informacoes_do_usuario.code).to eq(status_code)
end

E('o primeiro número retornado é igual a {int}') do |valor|
    expect(@retornar_informacoes_do_usuario[0]['id']).to eq(valor)
end

Então('o campo name deve ser do tipo String') do
    expect(@retornar_informacoes_do_usuario[0]['name']).to be_a_kind_of(String)
end