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
  @words = Word.all
  erb(:words)
end

post('/words') do
  word = params[:word_name]
  word = Word.new(definition, nil)
  word.save()
  @words = Word.all
  erb(:words)
end
