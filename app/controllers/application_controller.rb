class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def index
    @notes = Note.all
    @chords = Chord.all
    render('/index.html.erb')
  end
end
