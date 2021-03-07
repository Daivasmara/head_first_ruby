require 'movie'
require 'yaml/store'

store = YAML::Store.new('movies.yml')

spirited_away = Movie.new
spirited_away.id = 1
spirited_away.title = 'Spirited Away'
spirited_away.director = 'Hayao Miyazaki'
spirited_away.year = 2001

inception = Movie.new
inception.id = 2
inception.title = 'Inception'
inception.director = 'Christoper Nolan'
inception.year = 2010

store.transaction do
  store[spirited_away.id] = spirited_away
  store[inception.id] = inception
end
