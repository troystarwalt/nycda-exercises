# REPLACE ME

require "./models.rb"

p = President.new
p.id = 45
p.president_number = 45
p.name = "Trump"
p.birth_year = 1955
p.death_year = nil
p.took_office = "2017-01-20"
p.left_office = nil
p.party = "Republican"
p.home_state = "New York"
p.save

President.create({ 
    :name=>"Hillary Clinton", 
    :birth_year => 1947, 
    :took_office => "2021-01-20", 
    :party => "Democratic", 
    :home_state => "Illinois", 
    :id => 46, 
    :president_number => 46 
})

puts President.all.where(left_office: nil).count

