// lib/widgets/dimata_app_bar_view.dart

import 'package:flutter/material.dart';
import '../src/dimata_fonts.dart';

/// A custom [AppBar] widget for the Dimata application, featuring a gradient background, customizable title, and various actions.
/// It provides a flexible AppBar with options for a back button and a gradient background.
class DimataAppBarView extends StatelessWidget implements PreferredSizeWidget {
  /// The title to be displayed in the AppBar.
  final String title;

  /// The background color of the AppBar. Default is [Colors.blue].
  final Color backgroundColor;

  /// The color of the title text. Default is [Colors.white].
  final Color titleColor;

  /// A list of actions to display in the AppBar (e.g., icons on the right side of the AppBar).
  final List<Widget>? actions;

  /// A widget that will be displayed as the leading widget in the AppBar.
  /// This could be an icon or other widget. If `showBackButton` is true, this widget is ignored.
  final Widget? leading;

  /// Whether the AppBar should have a gradient background. Default is true.
  final bool hasGradient;

  /// Whether the back button should be displayed in the AppBar. Default is true.
  final bool showBackButton;

  /// A callback function for the back button action. If not provided, it pops the navigation stack.
  final VoidCallback? onBackPressed;

  /// Creates a new [DimataAppBarView] with the specified parameters.
  const DimataAppBarView({
    super.key,
    required this.title,
    this.backgroundColor = Colors.blue,
    this.titleColor = Colors.white,
    this.actions,
    this.hasGradient = true,
    this.showBackButton = true,
    this.onBackPressed, 
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// The title of the AppBar with custom font style defined in [DimataFonts].
      title: Text(
        title,
        style: DimataFonts.heading3(
          color: titleColor,
          fontWeight: FontWeight.bold,
        )
      ),
      centerTitle: true,

      /// If [hasGradient] is true, a gradient background is applied.
      flexibleSpace: hasGradient 
        ? Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  backgroundColor,
                  backgroundColor.withOpacity(0.7),
                ],
              ),
            ),
          )
        : null,

      /// The background color of the AppBar is either transparent (if gradient) or the provided [backgroundColor].
      backgroundColor: hasGradient ? Colors.transparent : backgroundColor,

      /// Elevation of the AppBar, used for shadow effect.
      elevation: 4,
      shadowColor: Colors.black45,

      /// The actions (e.g., icons) to display in the AppBar.
      actions: actions,

      /// Disables the default leading widget (back button or menu).
      automaticallyImplyLeading: false,

      /// The leading widget is conditionally set based on [showBackButton].
      leading: showBackButton
        ? IconButton(
            icon: Icon(Icons.arrow_back_ios, color: titleColor),
            onPressed: onBackPressed ?? () {
              Navigator.of(context).pop();
            },
          )
        : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
