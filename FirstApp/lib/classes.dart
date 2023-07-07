class Product {
  String imgURL;
  String name;
  double price;
  double rate;
  Product({required this.imgURL, required this.name, required this.price, required this.rate});
}

Product orange = Product(imgURL: "../assets/fruits/orange.png", name: "Orange", price: 20.00, rate: 4.0);
Product apple = Product(imgURL: "../assets/fruits/apples.png", name: "Apples", price: 30.00, rate: 5.0);
Product lemon = Product(imgURL: "../assets/fruits/lemons.png", name: "Lemon", price: 10.00, rate: 4.5);
Product pear = Product(imgURL: "../assets/fruits/pear.png", name: "Pear", price: 15.00, rate: 3.0);
Product strawberry = Product(imgURL: "../assets/fruits/strawberry.png", name: "Strawberry", price: 20.00, rate: 3.0);
Product grapefruit = Product(imgURL: "../assets/fruits/grapefruit.png", name: "Grapefruit", price: 25.00, rate: 2.0);
Product mandarin = Product(imgURL: "../assets/fruits/mandarin.png", name: "Mandarin", price: 15.00, rate: 3.0);
Product melons = Product(imgURL: "../assets/fruits/Melons.png", name: "Melons", price: 25.00, rate: 4.0);
Product pinkras = Product(imgURL: "../assets/fruits/pink_raspberries.png", name: "Pink Raspberries", price: 55.00, rate: 4.5);
Product pomegranate = Product(imgURL: "../assets/fruits/pomegranate.png", name: "Pomegranate", price: 17.00, rate: 5.0);

// List <Product> items  = [orange, apple, lemon, pear, strawberry];

class Contact {
  String name;
  double number;
  String email;
  String address;
  Contact({required this.name, required this.number, required this.email, required this.address});
}

Contact c1 = Contact(name:"Mohamed Mahmoud", number: 0123456789, email:"example@gmail.com", address: "geeks");
Contact c2 = Contact(name:"Mohamed Aly", number: 0123456789, email:"example@gmail.com", address: "geeks");
Contact c3 = Contact(name:"Matar", number: 0123456789, email:"example@gmail.com", address: "geeks");
Contact c4 = Contact(name:"Adham Ehab", number: 0123456789, email:"example@gmail.com", address: "geeks");
Contact c5 = Contact(name:"Hema", number: 0123456789, email:"example@gmail.com", address: "geeks");
Contact c6 = Contact(name:"Noaman", number: 0123456789, email:"example@gmail.com", address: "geeks");
Contact c7 = Contact(name:"Ziad", number: 0123456789, email:"example@gmail.com", address: "geeks");

List<Contact> myContacts = [c1, c2, c3,c4, c5, c6, c7];
