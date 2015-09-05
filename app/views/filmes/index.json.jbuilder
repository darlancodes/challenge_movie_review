json.array!(@filmes) do |filme|
  json.extract! filme, :id, :titulo, :descricao, :duracao, :diretor, :avaliacao
  json.url filme_url(filme, format: :json)
end
