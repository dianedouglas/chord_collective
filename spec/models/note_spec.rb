require 'rails_helper'

describe Note do

  it { should validate_presence_of :name }
  it { should validate_presence_of :octave }
  it { should validate_presence_of :identifier }
  it { should validate_presence_of :instrument }
	it { should validate_presence_of :loudness }
	it { should have_and_belong_to_many :chords }

end
