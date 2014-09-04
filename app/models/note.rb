class Note < ActiveRecord::Base

  validates :name, :presence => true
  validates :octave, :presence => true
  validates :identifier, :presence => true
  validates :instrument, :presence => true
	validates :loudness, :presence => true
	has_and_belongs_to_many :chords

end
