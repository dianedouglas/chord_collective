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
    @note = Note.find(params[:id])
    render('notes/show.html.erb')
  end

  def edit
    @note = Note.find(params[:id])
    render('notes/edit.html.erb')
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(params[:note])
      flash[:notice] = "Successfully updated #{@note.name}!"
      redirect_to('/notes')
    else
      render('notes/edit.html.erb')
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    flash[:notice] = "Note deleted."
    redirect_to('/notes')
  end

end
