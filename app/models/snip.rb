class Snip < ActiveRecord::Base
	validates :title, :presence => true
	validates :snippet, :presence => true

end
