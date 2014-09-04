Rails.application.routes.draw do

match('/', :via => :get, :to => 'application#index')
match('/index', :via => :get, :to => 'application#index')

match('notes', {:via => :get, :to => 'notes#index'})
match('notes/new', {:via => :get, :to => 'notes#new'})
match('notes', {:via => :post, :to => 'notes#create'})
match('notes/:id', {:via => :get, :to => 'notes#show'})
match('notes/:id/edit', {:via => :get, :to => 'notes#edit'})
match('notes/:id', {:via => [:patch, :put], :to => 'notes#update'})
match('notes/:id', {:via => :delete, :to => 'notes#destroy'})

match('/', {:via => :get, :to => 'chords#index'})
match('chords', {:via => :get, :to => 'chords#index'})
match('chords/new', {:via => :get, :to => 'chords#new'})
match('chords', {:via => :post, :to => 'chords#create'})
match('chords/:id', {:via => :get, :to => 'chords#show'})
match('chords/:id/edit', {:via => :get, :to => 'chords#edit'})
match('chords/:id', {:via => [:patch, :put], :to => 'chords#update'})
match('chords/:id', {:via => :delete, :to => 'chords#destroy'})

end
