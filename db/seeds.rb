# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data (optional)
Menu.destroy_all
Cheese.destroy_all

# Create cheeses
Cheese.create!([
    { name: "American", description: "A mild, creamy processed cheese often used in sandwiches and burgers.", category: "Processed" },
    { name: "Asiago", description: "An Italian cow's milk cheese with a sharp, nutty flavor, great for grating.", category: "Hard" },
    { name: "Blue", description: "A bold, tangy cheese with blue veins of mold, known for its strong aroma.", category: "Blue" },
    { name: "Bocconcini", description: "Small, semi-soft mozzarella balls, delicate and perfect for salads.", category: "Semi-Soft" },
    { name: "Brie", description: "A soft French cheese with a creamy interior and edible white rind.", category: "Soft" },
    { name: "Burrata", description: "A fresh Italian cheese with a soft mozzarella shell and creamy center.", category: "Fresh" },
    { name: "Camembert", description: "A rich, soft French cheese with a bloomy rind and earthy flavor.", category: "Soft" },
    { name: "Cheddar", description: "A popular English cheese, firm in texture with a sharp, tangy taste.", category: "Hard" },
    { name: "Colby", description: "A mild, moist American cheese similar to cheddar but softer and less tangy.", category: "Semi-Hard" },
    { name: "Parmesan", description: "A hard, granular Italian cheese known for its rich, savory flavor, often grated over pasta.", category: "Hard" },
    { name: "Gouda", description: "A Dutch cheese with a smooth texture and sweet, creamy taste that intensifies with age.", category: "Semi-Hard" },
    { name: "Goat", description: "A tangy, creamy cheese made from goat's milk, often enjoyed fresh or aged.", category: "Fresh" },
    { name: "Monterey Jack", description: "A semi-hard American cheese with a mild flavor and excellent melting properties, often used in Mexican dishes.", category: "Semi-Hard" },
    { name: "Feta", description: "A brined Greek cheese with a crumbly texture and tangy, salty flavor, commonly used in salads.", category: "Fresh" },
    { name: "Mozzarella", description: "A soft, white Italian cheese with a mild flavor and stretchy texture, essential for pizza.", category: "Semi-Soft" },
])

# Create menus
Menu.create!([
    { name: "Cheese Platter", cheeses: [Cheese.find_by(name: "Brie"), Cheese.find_by(name: "Gouda"), Cheese.find_by(name: "Blue")] },
    { name: "Cheese Quesadilla", cheeses: [Cheese.find_by(name: "Cheddar"), Cheese.find_by(name: "Monterey Jack")] },
    { name: "Cheese Stuffed Peppers", cheeses: [Cheese.find_by(name: "Goat"), Cheese.find_by(name: "Feta")] },
    { name: "Cheese Pizza", cheeses: [Cheese.find_by(name: "Mozzarella"), Cheese.find_by(name: "Parmesan")] },
    { name: "Cheese Board", cheeses: [Cheese.find_by(name: "Brie"), Cheese.find_by(name: "Gouda"), Cheese.find_by(name: "Blue")] },
    { name: "Classic American Sandwich", cheeses: [Cheese.find_by(name: "American"), Cheese.find_by(name: "Cheddar")] },
    { name: "Greek Salad", cheeses: [Cheese.find_by(name: "Feta"), Cheese.find_by(name: "Goat")] },
    { name: "Italian Trio", cheeses: [Cheese.find_by(name: "Mozzarella"), Cheese.find_by(name: "Parmesan"), Cheese.find_by(name: "Asiago")] },
    { name: "French Delights", cheeses: [Cheese.find_by(name: "Brie"), Cheese.find_by(name: "Camembert")] },
])
