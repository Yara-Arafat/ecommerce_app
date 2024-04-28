import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/models/home_carousel_model.dart';
import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Ahmed',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Let\'s go shopping!',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              //  TabBar(tabs: [Text('Home'), Text('Category')]),
              const SizedBox(
                height: 24,
              ),
              FlutterCarousel(
                options: CarouselOptions(
                  height: 190.0,
                  showIndicator: true,
                  slideIndicator: const CircularSlideIndicator(),
                ),
                items: dummyCarouselItems.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: CachedNetworkImage(
                        imageUrl: item.imgUrl,
                        fit: BoxFit.fill,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'New Arrivals',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextButton(onPressed: () {}, child: const Text('See All'))
                ],
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dummyProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 18),
                  itemBuilder: (context, index) =>
                      ProductItem(productItem: dummyProducts[index])),
            ],
          ),
        ),
      ),
    ));
  }
}
