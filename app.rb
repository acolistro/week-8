require('sinatra')
require('sinatra/reloader')
require('./lib/album')
require('pry')
also_reload('lib/**/*.rb')

get('/test') do
  erb(:word_definer)
end

get('/words') do
  @words = Word.all
  erb(:words)
end
