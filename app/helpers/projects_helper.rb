module ProjectsHelper
@zip
@distance
	

	def search(distance, zip) 
    # zip = "07302"

    @zip = zip
    @search_latlon = Geokit::Geocoders::MultiGeocoder.geocode(@zip)
    @distance = distance
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
  end




end
