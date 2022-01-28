import 'package:flutter/material.dart';
import 'package:mobx_api_demo/pages/post_list_page.dart';
import 'package:mobx_api_demo/pages/userpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MobX API Demo'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Posts',
            ),
            Tab(
              text: 'Users',
            )
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(controller: _tabController, children: [
          PostList(),
          const UserPage(),
        ]),
      ),
    );
  }
}
