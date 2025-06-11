import 'package:e_commerce_provider/core/export/export.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ProductModel> _favorites = [];

  List<ProductModel> get favorites => _favorites;

  void toggleFavorite(ProductModel product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

  incrementQtn(int index) {
    _favorites[index].quantity++;
    notifyListeners();
  }

  decrementQtn(int index) {
    if (_favorites[index].quantity <= 1) {
      return;
    }
    _favorites[index].quantity--;
    notifyListeners();
  }

  totalPrice() {
    double total1 = 0.0;
    for (ProductModel item in _favorites) {
      total1 = item.price * item.quantity;
    }
    return total1;
  }

  bool isExist(ProductModel product) {
    final favoriteProducts = _favorites.contains(product);
    return favoriteProducts;
  }

  static FavoriteProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<FavoriteProvider>(context, listen: listen);
  }
}
