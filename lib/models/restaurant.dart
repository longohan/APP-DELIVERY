import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'Food.dart';
import 'cart_item.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //Burger
    Food(
      name: 'Double Burger',
      description:
          "It contains 2 round beef patties, The patties are grilled or pan-fried to achieve a crispy exterior while retaining a juicy interior, cheese and some vegetable",
      imagePath: "Assets/image/burger/_7289aeaa-ab24-439e-84a3-11242c799238.jpg",
      price: 1.5,
      categores: FoodCategores.burges,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.10),
        Addon(name: "Bacon", price: 1.50),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: "Cheese Burger",
      description:
          "Bread sandwiched between Layer roast beef patty Melt cheddar or mozzarella cheese Fresh vegetables like lettuce, tomatoes",
      imagePath: "Assets/image/burger/_2beb0bdc-723c-404f-b173-8c3b2d3404cc.jpg",
      price: 1.0,
      categores: FoodCategores.burges,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.10),
        Addon(name: "Bacon", price: 1.50),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: "Bacon Burger",
      description:
          "Bread sandwiched between Layer roast beef patty Melt cheddar or mozzarella cheese Fresh vegetables like lettuce, tomatoes",
      imagePath: "Assets/image/burger/_ed28aacb-aab1-4faf-8c4b-edfcb1c5f899.jpg",
      price: 1.2,
      categores: FoodCategores.burges,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.10),
        Addon(name: "Bacon", price: 1.50),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "Bread sandwiched between Layer roast beef patty Melt cheddar or mozzarella cheese Fresh vegetables like lettuce, tomatoes",
      imagePath: "Assets/image/burger/_3d9ec06f-8d5d-455f-9b94-e8b9f26700c5.jpg",
      price: 5.0,
      categores: FoodCategores.burges,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.10),
        Addon(name: "Bacon", price: 1.50),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    //Desserts
    Food(
      name: "Crème Caramel",
      description: "A traditional custard dessert with a soft caramel layer on top and a creamy custard base.",
      imagePath: "Assets/image/desserts/_f172dae6-5aaa-4267-a47f-1366f41ee67b.jpg",
      price: 0.80,
      categores: FoodCategores.desserts,
      availableAddons: [
        Addon(name: "Extra bread", price: 0.10),
        Addon(name: "Extra Sauce", price: 0.10),
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
          "An Italian dessert made with layers of coffee-soaked sponge cake, mascarpone cheese cream, and dusted with cocoa powder.",
      imagePath: "Assets/image/desserts/_fe5f6189-2ba7-4f72-814f-0d0374dfecd6.jpg",
      price: 1.0,
      categores: FoodCategores.desserts,
      availableAddons: [
        Addon(name: "Extra bread", price: 0.10),
        Addon(name: "Extra Sauce", price: 0.10),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "A rich, creamy cheese-based dessert, often with a fruit-based topping or crust.",
      imagePath: "Assets/image/desserts/_07772ada-76b1-467e-ad76-6159dc2e9f2c.jpg",
      price: 1.0,
      categores: FoodCategores.desserts,
      availableAddons: [
        Addon(name: "Extra bread", price: 0.10),
        Addon(name: "Extra Sauce", price: 0.10),
      ],
    ),
    Food(
      name: "Puddings",
      description: "Traditional British-style desserts with a custard-like texture, available in various flavors.",
      imagePath: "Assets/image/desserts/_079543cb-8d5a-4147-8810-1469f9f21873.jpg",
      price: 0.80,
      categores: FoodCategores.desserts,
      availableAddons: [
        Addon(name: "Extra bread", price: 0.10),
        Addon(name: "Extra Sauce", price: 0.10),
      ],
    ),
    //Drinks
    Food(
      name: "Drink",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/drinks/_4d27016a-65fc-4f91-b676-4b5feaa3ac3c.jpg",
      price: 0.50,
      categores: FoodCategores.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0),
        Addon(name: "Extra juice", price: 0.20),
      ],
    ),
    Food(
      name: "Drink",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/drinks/_7b3c3f72-89b0-4286-a976-033d92525b12.jpg",
      price: 0.50,
      categores: FoodCategores.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0),
        Addon(name: "Extra juice", price: 0.20),
      ],
    ),
    Food(
      name: "Drink",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/drinks/_10b1a843-6a39-429c-b6e5-8128d2726161.jpg",
      price: 0.50,
      categores: FoodCategores.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0),
        Addon(name: "Extra juice", price: 0.20),
      ],
    ),
    Food(
      name: "Drink",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/drinks/_cf73b2cc-a763-463a-8fd2-76926c411c4f.jpg",
      price: 0.50,
      categores: FoodCategores.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0),
        Addon(name: "Extra juice", price: 0.20),

      ],
    ),
    //Salads
    Food(
      name: "Salad",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/salads/_8be94335-aa8b-4a47-9008-51310e46a0be.jpg",
      price: 1.50,
      categores: FoodCategores.salads,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.10),
        Addon(name: "Extra Vegetable", price: 0.50),
      ],
    ),
    Food(
      name: "Salad",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/salads/_69b89cd2-68f0-4933-b8e5-2582f205c6ca.jpg",
      price: 1.50,
      categores: FoodCategores.salads,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.10),
        Addon(name: "Extra Vegetable", price: 0.50),
      ],
    ),
    Food(
      name: "Salad",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/salads/_09075080-c0ce-4fdb-bc16-bbf3c1d8e9c2.jpg",
      price: 1.50,
      categores: FoodCategores.salads,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.10),
        Addon(name: "Extra Vegetable", price: 0.50),
      ],
    ),
    Food(
      name: "Salad",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/salads/_f57bdc26-eebf-43f9-81d3-2b3621977171.jpg",
      price: 1.50,
      categores: FoodCategores.salads,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.10),
        Addon(name: "Extra Vegetable", price: 0.50),
      ],
    ),
    //Sides
    Food(
      name: "Side",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/sides/_76f48ce0-c362-4e9a-bed8-fac92c576573.jpg",
      price: 1.0,
      categores: FoodCategores.sides,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.10),
        Addon(name: "Extra French fries", price: 0.50),
      ],
    ),
    Food(
      name: "Side",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/sides/_a7afa07b-f8f6-42e4-acdb-441741d90582.jpg",
      price: 1.0,
      categores: FoodCategores.sides,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.10),
        Addon(name: "Extra French fries", price: 0.50),
      ],
    ),
    Food(
      name: "Side",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/sides/_e4617487-3e3a-4765-84fb-e12b28a2a930.jpg",
      price: 1.0,
      categores: FoodCategores.sides,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.10),
        Addon(name: "Extra French fries", price: 0.50),
      ],
    ),
    Food(
      name: "Side",
      description: "Siêu ngon ko ngon thì đi về - Phong Cách MCK",
      imagePath: "Assets/image/sides/_ea1e52e2-6c09-4483-ab10-95f757f188f9.jpg",
      price: 1.0,
      categores: FoodCategores.sides,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.10),
        Addon(name: "Extra French fries", price: 0.50),
      ],
    ),
  ];
  final List<CartItem> _cart = [];

  // GETTERS:
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // Thêm vào giỏ hàng
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddon = const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameAddon && isSameFood;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // Xóa khỏi giỏ hàng
  void removeToCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) { // Sửa điều kiện
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // Tính tổng giá trị giỏ hàng
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // Tính tổng số lượng món trong giỏ hàng
  int getTotalItemCount() {
    return _cart.fold(0, (total, cartItem) => total + cartItem.quantity);
  }

  // Dọn dẹp giỏ hàng
  void cleanCart() {
    _cart.clear();
    notifyListeners();
  }
}
