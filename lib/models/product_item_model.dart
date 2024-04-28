class ProductItemModel {
  final String id;
  final String name;
  final String imgUrl;
  final bool isFavorite;
  final String descreption;
  final double price;
  final String category;

  ProductItemModel(
      {required this.id,
      required this.name,
      required this.imgUrl,
      this.isFavorite = false,
      this.descreption =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac ultricies felis. In varius nibh quam, nec ultrices augue euismod ut. Integer cursus eget tortor nec congue. Praesent ultricies tincidunt velit in consectetur.Cras sit amet pretium orci. Vestibulum id augue non diam porttitor ultrices. Donec blandit velit vitae elit feugiat ullamcorper. Praesent malesuada felis non neque sodales dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut vitae gravida nunc. Nam sit amet magna metus. Nullam pretium nisi pharetra purus finibus, nec feugiat elit commodo.',
      required this.price,
      required this.category});
}

//List<ProductItemModel> dummyProducts = [];
List<ProductItemModel> dummyProducts = [
  ProductItemModel(
    id: 'AnRGQgbluRRfIsVCfRZU',
    name: 'Pack of Potatoes',
    imgUrl: 'https://pngimg.com/d/potato_png2398.png',
    price: 10,
    category: 'Groceries',
    // isAddedToCart: true,
    // quantity: 5,
    // size: ProductSize.M,
  ),
  ProductItemModel(
    id: '3RCFbH0YzNO9r5WWMDlt',
    name: 'Pack of Onions',
    imgUrl: 'https://pngimg.com/d/onion_PNG99213.png',
    price: 10,
    category: 'Groceries',
    //size: ProductSize.M,
  ),
  ProductItemModel(
    id: 'oI1O8SI2Y9Oou4BB7FBE',
    name: 'Pack of Apples',
    imgUrl: 'https://pngfre.com/wp-content/uploads/apple-43-1024x1015.png',
    price: 10,
    category: 'Fruits',
    //size: ProductSize.M,
  ),
  ProductItemModel(
    id: 'poohR3IUcGSh39qef5D4',
    name: 'Pack of Oranges',
    imgUrl:
        'https://parspng.com/wp-content/uploads/2022/05/orangepng.parspng.com_-1.png',
    price: 10,
    category: 'Fruits',
    // size: ProductSize.M,
  ),
  ProductItemModel(
    id: '8e0vTogfe65seQhH1MCh',
    name: 'Pack of Bananas',
    imgUrl:
        'https://static.vecteezy.com/system/resources/previews/015/100/096/original/bananas-transparent-background-free-png.png',
    price: 10,
    category: 'Fruits',
    // size: ProductSize.M,
  ),
  ProductItemModel(
    id: 'Ms6gJsoejYd3H4LTjbYO',
    name: 'Pack of Mangoes',
    imgUrl: 'https://purepng.com/public/uploads/large/mango-tgy.png',
    price: 10,
    category: 'Fruits',
    // size: ProductSize.M,
  ),
  ProductItemModel(
    id: 'gICo8QELkuwehmNlt8G6',
    name: 'Sweet Shirt',
    imgUrl:
        'https://www.usherbrand.com/cdn/shop/products/5uYjJeWpde9urtZyWKwFK4GHS6S3thwKRuYaMRph7bBDyqSZwZ_87x1mq24b2e7_1800x1800.png',
    price: 15,
    category: 'Clothes',
    // size: ProductSize.M,
  ),
];
