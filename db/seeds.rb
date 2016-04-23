# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed
#
# For example:
#
# Insect.create!(name: "Fuzzy Mantis", description: "Really Fierce")

Wolf.create(name: "Timber Wolf", image: "https://s-media-cache-ak0.pinimg.com/736x/76/b6/75/76b675305d32b1576a5177fb64859752.jpg", description: "An American Hero, Protect Snake-Eyes")
Wolf.create(name: "John Dunbar", image: "https://s-media-cache-ak0.pinimg.com/236x/da/a9/41/daa9415f48ad45f35af44493e114c0a6.jpg", description: "Solider, and friend to All")
Wolf.create(name: "Scott Howard",image: "http://2.bp.blogspot.com/-3Fa3VTyCKlo/TuAjqspLxYI/AAAAAAAAAyM/Fn8_EScVoOc/s1600/Teen+Wolf+1985.jpg", description: "King of the 3-point line")
Wolf.create(name: "Jacob Black", image: "http://images6.fanpop.com/image/photos/35600000/Twilight-Saga-Wolves-the-twilight-saga-vampires-wolves-35635981-500-281.jpg", description: "I can't belive i made these movies, i promised a elk bone")

Howl.create(text: "there is nothing more important in life then a loyal owner", wolf_id:1)
Howl.create(text: "Do forget to watch my movie over and over again", wolf_id:1)
Howl.create(text: "Hi. I'd like a keg of beer please?", wolf_id:2)
Howl.create(text: "blood sucking leach", wolf_id:4)