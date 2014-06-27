class Project < ActiveRecord::Base
	belongs_to :user
	has_many :quotes

	acts_as_mappable

	has_attached_file :layout, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :layout, :content_type => /\Aimage\/.*\Z/

  validates :title, presence: true
  validates :description, presence: true
  validates :layout, presence: true
  validates :zip, presence: true

def self.search(zip, distance)

  if zip
    @zip = zip
    @distance = distance.to_i
    @search_latlon = Geokit::Geocoders::MultiGeocoder.geocode(@zip)

    @pros = Project.all

    @results = []

    # @results.each do |r|
    # 	puts r.id

    # end

    @pros.each do |p|      

      if @search_latlon.distance_to(p.lat_lon) < @distance
      	@results << p
      end

    end

    @results
  else
    puts "none"
  end
end

end
