import 'package:e_commerce_provider/core/export/export.dart';

class CartProvider extends ChangeNotifier {
  final List<ProductModel> _cart = [];

  List<ProductModel> get cart => _cart;

  void toggleFavorite(ProductModel product) {
    if (_cart.contains(product)) {
      for (ProductModel item in _cart) {
        item.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  incrementQtn(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  decrementQtn(int index) {
    if (_cart[index].quantity <= 1) {
      return;
    }
    _cart[index].quantity--;
    notifyListeners();
  }

  totalPrice() {
    double total1 = 0.0;
    for (ProductModel item in _cart) {
      total1 = item.price * item.quantity;
    }
    return total1;
  }

  static CartProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
