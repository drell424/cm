class Project < ActiveRecord::Base
	belongs_to :user
	has_many :quotes

	acts_as_mappable

	has_attached_file :layout, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :layout, :content_type => /\Aimage\/.*\Z/




end
