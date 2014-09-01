class NotesController < ApplicationController

	def index
		@notes = Note.all
		render('notes/index.html.erb')
	end

end