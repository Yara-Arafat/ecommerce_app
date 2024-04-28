class HomeCarouselModel {
  final String id;
  final String imgUrl;

  HomeCarouselModel({required this.id, required this.imgUrl});
}

List<HomeCarouselModel> dummyCarouselItems = [
  HomeCarouselModel(
      id: '1',
      imgUrl:
          'https://t3.ftcdn.net/jpg/03/78/93/48/360_F_378934873_5RrayXQJtuPBF810IRecAhqsai1Fyh1t.jpg'),
  HomeCarouselModel(
      id: '2',
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/009/926/381/non_2x/online-shopping-banner-mobile-app-templates-concept-3d-design-vector.jpg'),
  HomeCarouselModel(
      id: '3',
      imgUrl:
          'https://t3.ftcdn.net/jpg/03/83/21/88/360_F_383218892_B98gEq5bFMslw4FUv8DhuipERuS7yi8z.jpg'),
  HomeCarouselModel(
      id: '3',
      imgUrl:
          'https://t4.ftcdn.net/jpg/03/83/21/85/360_F_383218557_t5fC98hOdrg0hr4BsulCZ9mPX9a4uube.jpg'),
];
