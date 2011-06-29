# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

News.create([
    {
        title: 'ALDER INGEN HINDRING',
        place: 'Egelunden, Kokkedal',
        content: 'Her er et stykke om alder ingen hindring. Det er flot og gammelt og har noge med alder at goere',
        image: ''
    },
    {
        title: 'SJOV MED OST',
        place: 'Nivaa Bibliotek',
        content: 'Her er et stykke om alder ingen hindring. Det er flot og gammelt og har noge med alder at goere',
        image: ''
    }
])

Place.create([
    {
        name: 'Huset',
        address: 'Kongevej 32, 3480 Fredensborg',
        image: 'huset.jpg'
    },
    {
        name: 'Fredensborg Globe',
        address: 'Solitudevej 8b, 3480 Fredensborg',
        image: 'fredensborg_globe.jpg'
    }
])

Board.create([
    {
    }
])