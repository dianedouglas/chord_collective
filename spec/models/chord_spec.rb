require 'rails_helper'

describe Chord do
	
	it { should validate_presence_of :name }
	it { should have_and_belong_to_many :notes }

end