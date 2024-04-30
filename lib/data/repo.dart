import 'package:flutter_riverpod/flutter_riverpod.dart';

final foodRepProvider = Provider<Repo>((ref) {
  return Repo();
});

class Repo {
  List<String> dummyFoodList = [
    "Pizza",
    "Burger",
    "Salad",
    "Pasta",
    "Sushi",
    "Tacos",
    "Sandwich",
    "Steak",
    "Fries",
    "Chicken Wings",
    "Soup",
    "Rice",
    "Burrito",
    "Nachos",
    "Lasagna",
    "Sausage",
    "Donuts",
    "Bagel",
    "Muffin",
    "Pancakes",
    "Waffles",
    "French Toast",
    "Eggs",
    "Bacon",
    "Ham",
    "Cheese",
    "Ice Cream",
    "Cake",
    "Cupcake",
    "Cookie",
    "Brownie",
    "Popcorn",
    "Candy",
    "Pretzel",
    "Hot Dog",
    "Chili",
    "Chowder",
    "Ramen",
    "Pho",
    "Tiramisu",
    "Gelato",
    "Cannoli",
    "Croissant",
    "Pie",
    "Tart",
    "Cobbler",
    "Caramel Apple",
    "Macaron",
    "Biscuit",
    "Scone",
    "Cinnamon Roll",
    "Caramel Corn",
    "Churro",
    "Pudding",
    "Trifle",
    "Cheesecake",
  ];

  Future<List<String>> searchFood(String query) async {
    if (query.isEmpty) return [];
    List<String> searchResults = dummyFoodList
        .where((foodItem) =>
            foodItem.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
    await Future.delayed(const Duration(seconds: 1));
    return searchResults;
  }
}
