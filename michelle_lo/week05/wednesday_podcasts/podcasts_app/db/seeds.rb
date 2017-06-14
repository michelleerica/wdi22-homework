

##Podcast
Podcast.destroy_all
p1 = Podcast.create name: "Kristen Chenoweth", release_date: "2017/04/18"
p2 = Podcast.create name: "Sharon Stone", release_date: "2017/04/11"
p3 = Podcast.create name: "Eric Stonestreet", release_date: "2017/04/04"
p4 = Podcast.create name: "Lauren Graham", release_date: "2017/04/03"
p5 = Podcast.create name: "Winter", release_date: "2016/12/05"

puts "Created #{ Podcast.all.length } podcasts."

##Channel
Channel.destroy_all
c1 = Channel.create name: "Unqualified"
c2 = Channel.create name: "Gilmore Guys"
#
puts "Created #{Channel.all.length} channels."
#
c1.podcasts << p1 << p2 << p3
c2.podcasts << p4 << p5

## hosts
Host.destroy_all
h1 = Host.create name: "Kevin T Porter"
h2 = Host.create name: "Demi Adejuyigbe"
h3 = Host.create name: "Anna Faris"
h4 = Host.create name: "Sim Sarna"

# add Hosts to podcasts
p1.hosts << h3 << h4
p2.hosts << h3 << h4
p3.hosts << h3 << h4

# add podcasts to hosts (alt way)
h1.podcasts << p4 << p5
h2.podcasts << p4 << p5

## guests
Guest.destroy_all
g1 = Guest.create name: "Kristen Chenoweth"
g2 = Guest.create name: "Sharon Stone"
g3 = Guest.create name: "Eric Stonestreet"
g4 = Guest.create name: "Lauren Graham"
g5 = Guest.create name: "Guy Branum"
g6 = Guest.create name: "Hrishi Hirway"

# add Guests to podcasts
p5.guests << g5 << g6
