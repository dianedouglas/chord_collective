class ChordsController < ApplicationController

  def index
    @chords = Chord.all
    render('chords/index.html.erb')
  end

  def new
    @chord = Chord.new
    render('chords/new.html.erb')
  end

  def create
    @chord = Chord.new(params[:chord])
    if @chord.save
      flash[:notice] = "Successfully created #{@chord.name}!"
      redirect_to('/chords')
    else
      render('chords/new.html.erb')
    end
  end

  def show
    @chord = Chord.find(params[:id])
    render('chords/show.html.erb')
  end

  def edit
    @chord = Chord.find(params[:id])
    render('chords/edit.html.erb')
  end

  def update
    @chord = Chord.find(params[:id])
    if @chord.update(params[:chord])
      flash[:notice] = "Successfully updated #{@chord.name}!"
      redirect_to('/chords')
    else
      render('chords/edit.html.erb')
    end
  end

  def destroy
    @chord = Chord.find(params[:id])
    @chord.destroy
    flash[:notice] = "Chord deleted."
    redirect_to('/chords')
  end

end
