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
Category.destroy_all

# Create categories
Category.create!([
    { name: "Soft", description: "A soft cheese is a cheese that has a high moisture content and a soft texture. Examples include Brie and Camembert." },
    { name: "Hard", description: "A hard cheese is a cheese that has a low moisture content and a firm texture. Examples include Cheddar and Parmesan." },
    { name: "Blue", description: "Blue cheese is a type of cheese that has been inoculated with mold cultures, giving it a distinct blue or green marbling. Examples include Roquefort and Gorgonzola." },
    { name: "Processed", description: "Processed cheese is a cheese product made from a blend of natural cheeses and other ingredients, often used for its melting properties. Examples include American cheese and cheese spreads." },
    { name: "Fresh", description: "Fresh cheese is a cheese that has not been aged or matured. It has a mild flavor and a creamy texture. Examples include Ricotta and Mascarpone." },
    { name: "Semi-Soft", description: "Semi-Soft cheese is a cheese that has a smooth and creamy texture, but is firmer than fresh cheese. Examples include Havarti and Munster." },
    { name: "Semi-Hard", description: "Semi-Hard cheese is a cheese that has a firmer texture than semi-soft cheese, but is not as hard as aged cheese. Examples include Gouda and Edam." }
])

# Create cheeses
Cheese.create!([
    { name: "American", description: "A mild, creamy processed cheese often used in sandwiches and burgers.", category: Category.find_by(name: "Processed") },
    { name: "Asiago", description: "An Italian cow's milk cheese with a sharp, nutty flavor, great for grating.", category: Category.find_by(name: "Hard") },
    { name: "Blue", description: "A bold, tangy cheese with blue veins of mold, known for its strong aroma.", category: Category.find_by(name: "Blue") },
    { name: "Bocconcini", description: "Small, semi-soft mozzarella balls, delicate and perfect for salads.", category: Category.find_by(name: "Semi-Soft") },
    { name: "Brie", description: "A soft French cheese with a creamy interior and edible white rind.", category: Category.find_by(name: "Soft") },
    { name: "Burrata", description: "A fresh Italian cheese with a soft mozzarella shell and creamy center.", category: Category.find_by(name: "Fresh") },
    { name: "Camembert", description: "A rich, soft French cheese with a bloomy rind and earthy flavor.", category: Category.find_by(name: "Soft") },
    { name: "Cheddar", description: "A popular English cheese, firm in texture with a sharp, tangy taste.", category: Category.find_by(name: "Hard") },
    { name: "Colby", description: "A mild, moist American cheese similar to cheddar but softer and less tangy.", category: Category.find_by(name: "Semi-Hard") },
    { name: "Parmesan", description: "A hard, granular Italian cheese known for its rich, savory flavor, often grated over pasta.", category: Category.find_by(name: "Hard") },
    { name: "Gouda", description: "A Dutch cheese with a smooth texture and sweet, creamy taste that intensifies with age.", category: Category.find_by(name: "Semi-Hard") },
    { name: "Goat", description: "A tangy, creamy cheese made from goat's milk, often enjoyed fresh or aged.", category: Category.find_by(name: "Fresh") },
    { name: "Monterey Jack", description: "A semi-hard American cheese with a mild flavor and excellent melting properties, often used in Mexican dishes.", category: Category.find_by(name: "Semi-Hard") },
    { name: "Feta", description: "A brined Greek cheese with a crumbly texture and tangy, salty flavor, commonly used in salads.", category: Category.find_by(name: "Fresh") },
    { name: "Mozzarella", description: "A soft, white Italian cheese with a mild flavor and stretchy texture, essential for pizza.", category: Category.find_by(name: "Semi-Soft") },
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
