import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/views/widgets/category_tab_view.dart';
import 'package:ecommerce_app/views/widgets/home_tab_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
            TabBar(
                controller: _tabController,
                unselectedLabelColor: AppColors.grey,
                tabs: const [Text('Home'), Text('Category')]),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                HomeTabView(),
                CategoryTabView(),
              ]),
            ),
          ],
        ),
      ),
    ));
  }
}
