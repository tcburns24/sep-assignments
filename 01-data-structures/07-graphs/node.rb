class Node
	
	attr_accessor :name
	
	attr_accessor :film_actor_hash

	def initialize(name)
		@name = name
		@film_actor_hash = Hash.new
	end
	
end

#bob = Node.new("Bob")
#larry = Node.new("Larry")
#greg = Node.new("Greg")
#
#
#bob.film_actor_hash["Movie Time"] = [larry, greg]
#bob.film_actor_hash["Some Moov"] = [greg]
#
#larry.film_actor_hash["Move It"] = [greg]
#...

kbacon = Node.new("kbacon")
jdepp = Node.new("jdepp")
djohnson = Node.new("djohnson")
mwahlberg = Node.new("mwahlberg")
jgoodman = Node.new("jgoodman")
obloom = Node.new("obloom")
kknightley = Node.new("kknightley")
imckellen = Node.new("imckellen")
mfreeman = Node.new("mfreeman")
bcumberbatch = Node.new("bcumberbatch")
rmcadams = Node.new("rmcadams")
mmikkelsen = Node.new("mmikkelsen")


kbacon.film_actor_hash["Patriots Day"] = [mwahlberg, jgoodman]

jgoodman.film_actor_hash["Patriots Day"] = [kbacon, mwahlberg]

mwahlberg.film_actor_hash["Patriots Day"] = [kbacon, jgoodman]

kbacon.film_actor_hash["Black Mass"] = [jdepp, djohnson]

jdepp.film_actor_hash["Black Mass"] = [kbacon, djohnson]

djohnson.film_actor_hash["Black Mass"] = [kbacon, jdepp]

jdepp.film_actor_hash["Pirates of the Caribbean"] = [obloom, kknightley]

obloom.film_actor_hash["Pirates of the Caribbean"] = [jdepp, kknightley]

kknightley.film_actor_hash["Pirates of the Caribbean"] = [jdepp, obloom]

obloom.film_actor_hash["The Hobbit"] = [imckellen, mfreeman]

imckellen.film_actor_hash["The Hobbit"] = [obloom, mfreeman]

mfreeman.film_actor_hash["The Hobbit"] = [obloom, imckellen]

kknightley.film_actor_hash["The Imitation Game"] = [bcumberbatch]

bcumberbatch.film_actor_hash["The Imitation Game"] = [kknightley]

bcumberbatch.film_actor_hash["Doctor Strange"] = [rmcadams, mmikkelsen]

rmcadams.film_actor_hash["Doctor Strange"] = [bcumberbatch, mmikkelsen]

mmikkelsen.film_actor_hash["Doctor Strange"] = [bcumberbatch, rmcadams]

puts "Outer kbacon #{kbacon}"

def find_kevin_bacon(actor)
	if actor.name == "kbacon"
		return []
	else
		actor.film_actor_hash.each do |movie_title, actors|
			actors.each do |co_actor|
				movie_path = find_kevin_bacon(co_actor)
				return [movie_title].concat(movie_path)
			end
		end
	end
end

#A   A   A   A
# \ / \ / \ /
#	M   M   M
# Check each actor to see if actor.name is "kbacon"

#def find_kevin_bacon(actor)
#	actor.film_actor_hash.each do |movie_title, actors|
#		if actor.name == "kbacon"
#			return [movie_title]
#		else
#			actors.each do |actor|
#				movie_array = find_kevin_bacon(actor)
#				return movie_array
#			end
#		end
#	end
#end

	
puts find_kevin_bacon(mfreeman)
	
