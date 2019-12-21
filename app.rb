require('sinatra')
require('sinatra/reloader')
require('./lib/word')
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
  word_name = params[:word_name]
  definition = params[:definition]
  word = Word.new(word_name, definition, nil)
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

get('/words/:id/edit') do
  @word = Word.find(params[:id].to_i())
  erb(:edit_word)
end

patch('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.update(params[:word_name, :definition])
  @words = Word.all
  erb(:words)
end

delete('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.delete()
  @words = Word.all
  erb(:words)
end
