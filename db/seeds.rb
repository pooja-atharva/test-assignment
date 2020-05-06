channel_1 = Channel.create(name: "Sony tv", time: "24:00")
channel_2 = Channel.create(name: "Zee", time: "24:00")
channel_3 = Channel.create(name: "Sab tv", time: "24:00")

channel_1.shows.create(name: "The kapil sharma show", time: "19:30" )
channel_1.shows.create(name: "Indian Idol", time: "20:00" )
channel_1.shows.create(name: "KBC", time: "20:30" )

channel_2.shows.create(name: "Sa re ga ma pa", time: "19:30" )
channel_2.shows.create(name: "Dance india dance", time: "20:00" )
channel_2.shows.create(name: "kumkum bhagya", time: "20:30" )

channel_3.shows.create(name: "Tenali Rama", time: "19:30" )
channel_3.shows.create(name: "Baal veer", time: "20:00" )
channel_3.shows.create(name: "Tarak maheta ka Oolta chashmah", time: "20:30" )
