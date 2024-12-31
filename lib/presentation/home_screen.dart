import 'package:flutter/material.dart';
import 'package:mytaskproject/presentation/garage.dart';
import 'package:mytaskproject/presentation/market.dart';
import 'package:mytaskproject/presentation/rides.dart';
import 'package:mytaskproject/presentation/stories.dart';
import 'package:mytaskproject/widgets/custom_appbar.dart';
import 'package:mytaskproject/widgets/custom_events.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const MySliverAppBar(),
              const SliverToBoxAdapter(
                child: Events(),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _StickyTabBarDelegate(
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.amber,
                    unselectedLabelColor: const Color(0xFF5E5E5E),
                    labelPadding: const EdgeInsets.only(right: 5),
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w900),
                    unselectedLabelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                    indicator: const BoxDecoration(),
                    dividerColor: Colors.transparent,
                    tabs: const [
                      Tab(text: 'Rides'),
                      Tab(text: 'Stories'),
                      Tab(text: 'Market'),
                      Tab(text: 'Garage'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: const [Rides(), Stories(), Market(), Garage()],
          ),
        ),
      ),
    );
  }
}

class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyTabBarDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      elevation: 2,
      child: child,
    );
  }

  @override
  double get maxExtent => 45;

  @override
  double get minExtent => 45;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

// Example Content Widgets
class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Page Content'));
  }
}

class ContactPageContent extends StatelessWidget {
  const ContactPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Contact Page Content'));
  }
}

class AboutPageContent extends StatelessWidget {
  const AboutPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('About Page Content'));
  }
}
