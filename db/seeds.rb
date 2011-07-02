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

Gallery.create([
    {
        title: 'Alder ingen hindring',
        place: 'Nivaa Bibliotek',
    },
    {
        title: 'Sjov med ost',
        place: 'Humlebaek Arena'
    }
])
=begin
Image.create([
    {
        title: 'fredensborg_globe',
        image: 'fredensborg_globe.jpg',
        gallery_id: 1
    },
    {
        title: 'huset',
        image: 'huset.jpg',
        gallery_id: 1
    },
    {
        title: 'fredensborg_globe',
        image: 'fredensborg_globe.jpg',
        gallery_id: 1
    },
    {
        title: 'huset',
        image: 'huset.jpg',
        gallery_id: 1
    },
    {
        title: 'fredensborg_globe',
        image: 'fredensborg_globe.jpg',
        gallery_id: 2
    },
    {
        title: 'huset',
        image: 'huset.jpg',
        gallery_id: 2
    },
    {
        title: 'fredensborg_globe',
        image: 'fredensborg_globe.jpg',
        gallery_id: 2
    },
    {
        title: 'huset',
        image: 'huset.jpg',
        gallery_id: 2
    }
])
=end
Board.create([
    {
        name: 'Test',
        title: 'Blabla',
        image: ''
    },
    {
        name: 'Test',
        title: 'Blabla',
        image: ''
    },
    {
        name: 'Test',
        title: 'Blabla',
        image: ''
    },
    {
        name: 'Test',
        title: 'Blabla',
        image: ''
    },
    {
        name: 'Test',
        title: 'Blabla',
        image: ''
    }
])