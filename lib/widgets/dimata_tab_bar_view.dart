// lib/widgets/dimata_tab_bar_view.dart

import 'package:flutter/material.dart';
import '../src/dimata_colors.dart';
import '../src/dimata_fonts.dart';

/// A custom TabBar widget that includes a TabBar and a TabBarView, designed to provide a tab-based navigation
/// interface with customization options for label colors, indicator colors, and the appearance of the TabBar.
/// 
/// This widget is a stateful widget that manages a TabController for handling tab changes and updating the view accordingly.
class DimataTabBarView extends StatefulWidget {
  /// The number of tabs in the TabBar.
  final int lengOfTabs;

  /// A list of tab names (titles) to display on the TabBar.
  final List<String> name;

  /// A list of pages (widgets) corresponding to each tab.
  final List<Widget> pages;

  /// A callback function that returns the index of the currently selected tab.
  /// Called whenever the tab changes.
  final Function(int index) onTabChanged;

  /// The color for the selected tab label.
  final Color? labelColor;

  /// The color for the indicator beneath the selected tab.
  final Color? indicatorColor;

  /// The color for the unselected tab labels.
  final Color? unselectedLabelColor;

  /// The background color of the TabBar.
  final Color? backgroundColor;

  /// Creates a new [DimataTabBarView] with the specified parameters.
  const DimataTabBarView({
    super.key,
    required this.lengOfTabs,
    required this.name,
    required this.pages,
    required this.onTabChanged,
    this.labelColor,
    this.indicatorColor,
    this.unselectedLabelColor,
    this.backgroundColor,
  });

  @override
  State<DimataTabBarView> createState() => _DimataTabBarViewState();
}

class _DimataTabBarViewState extends State<DimataTabBarView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<String> adjustedName;

  @override
  void initState() {
    super.initState();
    // Adjust the name list to match the length of the tabs.
    adjustedName = widget.name.length > widget.lengOfTabs ? widget.name.sublist(0, widget.lengOfTabs) : widget.name;

    // Initialize the TabController with the specified number of tabs.
    _tabController = TabController(length: widget.lengOfTabs, vsync: this);

    // Listen for tab change events.
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        widget.onTabChanged(_tabController.index); // Notify when the tab changes.
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the TabController when the widget is destroyed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          // TabBar UI with custom background color.
          Container(
            color: widget.backgroundColor,
            child: _tabBar(),
          ),
          // TabBarView UI displaying the pages corresponding to the selected tab.
          Expanded(
            child: _tabBarView(),
          ),
        ],
      ),
    );
  }

  /// Builds and returns the TabBar widget that displays the tab labels.
  TabBar _tabBar() {
    // Helper function to create a styled tab title.
    Widget tabTitle(String title) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 6,
        ),
        child: Text(
          title,
          style: DimataFonts.bodyMedium(),
        ),
      );
    }

    return TabBar(
      controller: _tabController,
      labelColor: widget.labelColor ?? DimataColors().primary, // Default label color if not provided.
      indicatorColor: widget.indicatorColor ?? DimataColors().background, // Default indicator color if not provided.
      unselectedLabelColor: widget.unselectedLabelColor ?? DimataColors().textDisabled, // Default unselected label color if not provided.
      tabs: adjustedName.map((e) => tabTitle(e)).toList(), // Create a list of tab labels.
    );
  }

  /// Builds and returns the TabBarView widget that displays the corresponding pages for each tab.
  TabBarView _tabBarView() {
    return TabBarView(
      controller: _tabController,
      children: widget.pages, // Each page corresponds to a tab.
    );
  }
}
