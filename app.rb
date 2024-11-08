require 'sinatra'

get '/' do
  erb :index
end

post '/calcular' do
  numero1 = params[:numero1].to_f
  numero2 = params[:numero2].to_f
  operacao = params[:operacao]

  resultado = case operacao
  when "adicao"
    numero1 + numero2
  when "subtracao"
    numero1 - numero2
  when "multiplicacao"
    numero1 * numero2
  when "divisao"
    numero1 / numero2
  else
    "Operação Inválida."
  end

  @resultado = resultado
  erb :resultado
end