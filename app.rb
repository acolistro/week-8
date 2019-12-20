require('sinatra')
require('sinatra/reloader')
require('./lib/word_definer')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all
  erb(:words)
end

get('/words') do
  @word = Word.find_by_word(params[:search])
  erb(:search_results)
end

post('/words') do
  word = params[:word_name]
  word = Word.new(definition, nil)
  word.save()
  @words = Word.all
  erb(:words)
end

get('/words/new') do
  erb(:new_word)
end

get('words/:id') do
  @word = Word.find(params[:id].to_i())
  erb(:word)
end

get('/albums/:id/edit') do
  @word = Word.find(params[:id].to_i())
  erb(:edit_album)
end

patch('/albums/:id') do
  @word = Word.find(params[:id].to_i())
  @word.update(params[:definition])
  @words = Word.all
  erb(:words)
end
