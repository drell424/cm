module ProjectsHelper

	def search 
    zip = "07302"
    @search_latlon = Geokit::Geocoders::MultiGeocoder.geocode(zip)

    @pros = Project.all

    @results = []

    # @results.each do |r|
    # 	puts r.id

    # end

    @pros.each do |p|      

      if @search_latlon.distance_to(p.lat_lon) < 10
      	@results << p
      end

    end

    @results
  end
  
end
