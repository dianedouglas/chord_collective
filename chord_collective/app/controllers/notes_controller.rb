class NotesController < ApplicationController

	def index
		@notes = Note.all
    render('notes/index.html.erb')
  end

  def new
    @note = Note.new
    render('notes/new.html.erb')
  end

  def create
    @note = Note.new(params[:note])
    if @note.save
      flash[:notice] = "Successfully created #{@note.name}!"
      redirect_to('/notes')
    else
  		render('notes/new.html.erb')
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
