import 'model/category.dart';
import 'constants/assets.dart';
import 'model/product.dart';

final List<Category> categories = [
  const Category(title: 'Burger', image: burderIcon),
  const Category(title: 'Pizza', image: pizza),
  const Category(title: 'Noodles', image: noodles),
  const Category(title: 'French', image: friesIcon),
  const Category(title: 'Croissant', image: croissantIcon),
];

//List popular Product

final List<Product> popularProduct = [
  Product(
      name: 'xxx Burger',
      tagLine: 'Double Choice',
      description: 'Product Description ...  ',
      image: burger,
      price: 5.40,
      rating: 6.0),
  Product(
      name: 'xxx Pizza',
      tagLine: 'Single',
      description: 'Product Description',
      image: pizza,
      price: 5.40,
      rating: 6.0),
  Product(
      name: 'xxx Noodle',
      tagLine: 'Super Noodle',
      description: 'Product Description',
      image: noodles,
      price: 2.40,
      rating: 10.0),
  Product(
      name: 'xxx Fries',
      tagLine: 'Musturde Sauce',
      description: 'Product Description',
      image: fries,
      price: 4.30,
      rating: 5.0),
];
