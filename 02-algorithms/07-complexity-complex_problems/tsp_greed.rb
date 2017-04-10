# Nearest Neighbor

class NearestNeighbor
	attr_accessor :visited, :neighbors, :distance

	def initialize(distance)
		@neighbors = []
		@visited = false
		@distance = distance
	end

	def nearest_neighbor(cities, current_city)
		while current_city.visited == false
		    puts current_city.distance
			neighbors = current_city.neighbors
			next_city = nil

			for current_neighbor in neighbors
				if current_neighbor.visited == false && (next_city.nil? || current_neighbor.distance < next_city.distance)
					next_city = current_neighbor
				end
			end
			current_city.visited = true
			current_city = next_city unless next_city.nil?
		end
	end
end
	
	hartford = NearestNeighbor.new(0)
	nyc = NearestNeighbor.new(40)
	baltimore = NearestNeighbor.new(85)
	raleigh = NearestNeighbor.new(110)
	atlanta = NearestNeighbor.new(165)
	orlando = NearestNeighbor.new(220)
	austin = NearestNeighbor.new(400)
	chicago = NearestNeighbor.new(330)
	st_louis = NearestNeighbor.new(375)
	las_vegas = NearestNeighbor.new(550)
	santa_fe = NearestNeighbor.new(700)
	dallas = NearestNeighbor.new(575)
	san_jose = NearestNeighbor.new(900)
	boise = NearestNeighbor.new(840)
	
	hartford.neighbors << nyc
	hartford.neighbors << baltimore
	hartford.neighbors << raleigh
	
	raleigh.neighbors << baltimore
	raleigh.neighbors << atlanta
	raleigh.neighbors << orlando
	    
	orlando.neighbors << atlanta
	orlando.neighbors << dallas
	
	chicago.neighbors << austin
	chicago.neighbors << st_louis
	chicago.neighbors << dallas
	
	st_louis.neighbors << santa_fe
	st_louis.neighbors << boise
	st_louis.neighbors << dallas
	
	dallas.neighbors << st_louis
	dallas.neighbors << austin
	dallas.neighbors << santa_fe
	
	austin.neighbors << dallas
	austin.neighbors << las_vegas
	austin.neighbors << santa_fe
	austin.neighbors << san_jose
	
	boise.neighbors << san_jose
	boise.neighbors << las_vegas
	
	las_vegas.neighbors << san_jose
	
	san_jose.neighbors << dallas
	san_jose.neighbors << boise
	san_jose.neighbors << las_vegas
	
	
    
hartford.nearest_neighbor([], orlando)

	
	