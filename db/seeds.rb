# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
playlists =  Playlist.create(
  [
    {
      title: "Morning Routine",
      body: "Make a cup of tea"
    },
    {
      title: "Afternoon Routine",
      body: "5 minutes of Mediation"
    },
    {
      title: "Evening Routinge",
      body: "7 minutes of yoga"
    },
    {
      title: "Weekend Routine",
      body: "Spending time with friends and family"
    }
  ])
