import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final ProductItemModel productItem;
  const ProductItem({super.key, required this.productItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                height: 115,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CachedNetworkImage(
                    fit: BoxFit.contain,
                    imageUrl: productItem.imgUrl,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                )),
            Positioned(
              top: 4,
              right: 4,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white60,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outline),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          productItem.name,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        Text(
          productItem.category,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                //   fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
        ),
        Text(
          '\$${productItem.price}',
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        )
      ],
    );
  }
}
