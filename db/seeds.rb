# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

products = Product.create([
    {product_name: "Taiwan", product_description: "Taiwan is a small island nation 180km east of China with modern cities, 
    traditional Chinese temples, hot springs resorts and dramatic mountainous terrain. Taipei, the country’s capital in the north, 
    is known for its busy night markets, Chinese Imperial art at the National Palace Museum and Taipei 101, a 509m-tall, 
    bamboo-shaped skyscraper with an observation deck.", price: 200.00},
    {product_name: "Hawaii", product_description: "Hawaii's diverse natural scenery, warm tropical climate, abundance of public beaches, 
    oceanic surroundings, and active volcanoes make it a popular destination for tourists, surfers, biologists, and volcanologists. 
    Because of its central location in the Pacific and 19th-century labor migration, Hawaii's culture is strongly influenced by North American 
    and Asian cultures, in addition to its indigenous Hawaiian culture.", price: 300.00},
    {product_name: "Rome", product_description: "Rome, Italy’s capital, is a sprawling, cosmopolitan city with nearly 3,000 years of globally 
    influential art, architecture and culture on display. Ancient ruins such as the Forum and the Colosseum evoke the power of the former 
    Roman Empire. Vatican City, headquarters of the Roman Catholic Church, has St. Peter’s Basilica and the Vatican Museums, which house 
    masterpieces such as Michelangelo’s Sistine Chapel frescoes.", price: 400.00},
    {product_name: "Paris", product_description: "Paris, France's capital, is a major European city and a global center for art, fashion, 
    gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the 
    Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the 
    Rue du Faubourg Saint-Honoré.", price: 500.00}
])