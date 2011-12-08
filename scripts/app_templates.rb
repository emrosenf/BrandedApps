u = User.new
u.email = "evan@merchcraft.com"
u.password = "test"
u.save

a = App.new
a.name = "Wikipedia"
a.description = "An advanced Wikipedia viewer. Supremely practical, gives the beholder the entire corpus of human knowledge."
a.canvas = File.open(Rails.root.join("app/assets/images/wikibot.png"))
a.user = u
a.save

b = App.new
b.name = "Card Reader"
b.description = "A digital card reader with a powerful LED light and magnifying glass. Perfect for reading menus in dark restaurants!"
b.canvas = File.open(Rails.root.join("app/assets/images/card_reader.png"))
b.user = u
b.save