class Howl < ActiveRecord::Base

	validates :text, presence: true
	belongs_to :wolf


end
