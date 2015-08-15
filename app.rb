require('sinatra')
require('sinatra/reloader')
require('./lib/word.rb')
require('./lib/definition.rb')
require('pry')


get("/") do
  erb(:index)
end

get("/words") do
  @words = Word.all()
  @def_list = Definition.all()
  erb(:words)
end

get("/words/new") do
  erb(:word_form)
end

post('/words') do
  new_word = Word.new(params.fetch("word"))
  new_word.save()
  @words = Word.all()

  all_defs = Definition.new(params.fetch("def1"), params.fetch("def2"), params.fetch("def3"))
  all_defs.save()
  @def_list = Definition.all()
  erb(:words)
end

post('word') do
  new_word = Word.new(params.fetch("word"))
  new_word.save()
  @words = Word.all()

  all_defs = Definition.new(params.fetch("def1"), params.fetch("def2"), params.fetch("def3"))
  all_defs.save()
  @def_list = Definition.all()
  erb(:words)
end