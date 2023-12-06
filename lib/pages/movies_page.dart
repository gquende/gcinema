import 'package:flutter/material.dart';
import 'package:gcinema/pages/movies_view.dart';
import 'package:gcinema/pages/widgets/dot_tab_indicator.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        primary: false,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicator: const DotIndicator(),
          tabs: [
            Tab(
              text: "Filmes",
            ),
            Tab(
              text: "Séries",
            ),
            Tab(
              text: "Shows",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [MoviesView(), SizedBox.expand(), SizedBox.expand()],
      ),
    );
  }
}
