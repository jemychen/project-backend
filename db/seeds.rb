# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.destroy_all
User.destroy_all

jemy = User.create(username: "jemy", password: "123")

playstation = [
    {
        name: 'Persona 5 Royal',
        image: 'https://s.pacn.ws/640/wu/persona-5-the-royal-591403.18.jpg?pzvhir',
        price: 59.99,
        category: 'playstation'
    },
    {
        name: "Marvel's Spider-Man Game of the Year Edition",
        image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6363/6363873_sd.jpg;maxHeight=640;maxWidth=550',
        price: 19.99,
        category: 'playstation'
    },
    {
        name: "Kingdom Hearts III",
        image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/9497/9497135_sd.jpg;maxHeight=640;maxWidth=550',
        price: 7.99,
        category: 'playstation'
    },
    {
        name: "Horizon Zero Dawn: Complete Edition",
        image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6138/6138365_sd.jpg;maxHeight=640;maxWidth=550',
        price: 9.99,
        category: 'playstation'
    },
    {
        name: "Ghost of Tsushima (Collector's Edition)",
        image: 'https://s.pacn.ws/640/ym/ghost-of-tsushima-collectors-edition-623425.15.jpg?q6r8n8',
        price: 199.99,
        category: 'playstation'
    },
    {
        name: "The Last of Us II (Special Edition)",
        image: 'https://s.pacn.ws/640/xu/the-last-of-us-part-ii-special-edition-609023.12.jpg?q33p9r',
        price: 199.99,
        category: 'playstation'
    }
]

microsoft = [
    {
    name: "Kingdom Hearts III",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1679/1679877_sd.jpg;maxHeight=640;maxWidth=550',
    price: 7.99,
    category: 'microsoft'
    },
    {
    name: "Ori and The Will of the Wisps",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6255/6255308_sd.jpg;maxHeight=640;maxWidth=550',
    price: 34.99,
    category: 'microsoft'
    },
    {
    name: "Sea of Thieves",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/9287/9287012_sd.jpg;maxHeight=640;maxWidth=550',
    price: 9.99,
    category: 'microsoft'
    },
    {
    name: "DOOM Eternal",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6255/6255282_sd.jpg;maxHeight=640;maxWidth=550',
    price: 59.99,
    category: 'microsoft'
    },
    {
    name: "Borderlands 3",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6345/6345260_sd.jpg;maxHeight=640;maxWidth=550',
    price: 12.99,
    category: 'microsoft'
    }
]

nintendo = [
    {
    name: "Pokemon: Let's Go, Pikachu!",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6216/6216393_sd.jpg;maxHeight=640;maxWidth=550',
    price: 59.99,
    category: 'nintendo'
    },
    {
    name: "The Legend of Zelda: Link's Awakening",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6255/6255362_sd.jpg;maxHeight=640;maxWidth=550',
    price: 59.99,
    category: 'nintendo'
    },
    {
    name: "Animal Crossing: New Horizons",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5723/5723316_sd.jpg;maxHeight=640;maxWidth=550',
    price: 59.99,
    category: 'nintendo'
    },
    {
    name: "New Super Mario Bros. U Deluxe",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6311/6311892_sd.jpg;maxHeight=640;maxWidth=550',
    price: 59.99,
    category: 'nintendo'
    },
    {
    name: "Super Mario Maker 2",
    image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6255/6255383_sd.jpg;maxHeight=640;maxWidth=550',
    price: 59.99,
    category: 'nintendo'
    }
]

Item.create(playstation)
Item.create(microsoft)
Item.create(nintendo)