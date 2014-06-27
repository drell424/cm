class Quote < ActiveRecord::Base
	belongs_to :user
	belongs_to :project

	validates :price, presence: true
  validates :details, presence: true
  
end
