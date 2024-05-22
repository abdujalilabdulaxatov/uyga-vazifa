class ProductModel {
  final String productName;
  final String price;
  final String link;
  final String date;
  final String location;

  ProductModel(
      {required this.link,
      required this.date,
      required this.location,
      required this.productName,
      required this.price});

  static List<ProductModel> products = [
    ProductModel(
        link: 'images/macbook3.webp',
        date: 'bugun 15:43',
        location: 'Toshkent, Uchtepa',
        productName: 'macbook air',
        price: '6 000 000'),
    ProductModel(
        link: 'images/cobalt.webp',
        date: 'bugun 15:43',
        location: 'Toshkent, Uchtepa',
        productName: 'cobalt',
        price: '6 000 000'),
    ProductModel(
        link: 'images/isuzu.webp',
        date: 'bugun 15:43',
        location: 'Toshkent, Uchtepa',
        productName: 'isuzu',
        price: '6 000 000'),
    ProductModel(
        link: 'images/pult.webp',
        date: 'bugun 15:43',
        location: 'Toshkent, Uchtepa',
        productName: 'pult',
        price: '6 000 000'),
    ProductModel(
        link: 'images/macbook1.webp',
        date: 'bugun 15:43',
        location: 'Toshkent, Uchtepa',
        productName: 'macbook Pro 2016',
        price: '6 000 000'),
    ProductModel(
        link: 'images/skutor.webp',
        date: 'bugun 15:43',
        location: 'Toshkent, Uchtepa',
        productName: 'skutor',
        price: '6 000 000'),
    ProductModel(
        link: 'images/macbook2.webp',
        date: 'bugun 15:43',
        location: 'Toshkent, Uchtepa',
        productName: 'macbook Pro',
        price: '6 000 000'),
  ];
}
