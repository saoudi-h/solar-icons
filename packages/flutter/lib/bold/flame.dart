// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flame` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDE1LjAwMDJDMjAgMTkuMjU0NyAxNy4zODE5IDIxLjEyMTYgMTUuMzU4OCAyMS43NTEyQzE0LjkyNzQgMjEuODg1NCAxNC42NDM4IDIxLjM4MjUgMTQuOTAxOSAyMS4wMTE2QzE1Ljc4MjMgMTkuNzQ2NCAxNi44IDE3LjgxNjEgMTYuOCAxNi4wMDAyQzE2LjggMTQuMDQ5NiAxNS4xNTU5IDExLjc0NjcgMTMuODcyMSAxMC4zMjYzQzEzLjU3ODYgMTAuMDAxNiAxMy4wNjY3IDEwLjIxNjQgMTMuMDUwNyAxMC42NTM5QzEyLjk5NzYgMTIuMTAzMSAxMi43Njg5IDE0LjA0MiAxMS43ODI4IDE1LjU2MTZDMTEuNjI0MSAxNS44MDYyIDExLjI4NzIgMTUuODI2NCAxMS4xMDYzIDE1LjU5NzdDMTAuNzk4MiAxNS4yMDggMTAuNDkwMSAxNC43MjY3IDEwLjE4MiAxNC4zNDY0QzEwLjAxNiAxNC4xNDE2IDkuNzE2MDQgMTQuMTM4OCA5LjUyNDYxIDE0LjMyQzguNzc4MjUgMTUuMDI2NyA3LjczMzMzIDE2LjEyODggNy43MzMzMyAxNy41MDAyQzcuNzMzMzMgMTguNDMwMSA4LjA5MzYgMTkuNDA1IDguNTAwMDcgMjAuMTg5M0M4LjcyMzY4IDIwLjYyMDggOC4zMjYwNyAyMS4xNDAyIDcuODk1NzMgMjAuOTE0NEM2LjExMzA3IDE5Ljk3ODkgNCAxOC4wODM4IDQgMTUuMDAwMkM0IDExLjg1MzggOC4zMTAyOSA3LjQ5NTAzIDkuOTU2MDUgMy4zNzcxMkMxMC4yMTU3IDIuNzI3MzMgMTEuMDE2MSAyLjQyMTk5IDExLjU3MjcgMi44NDYwM0MxNC45NDM5IDUuNDE0MDkgMjAgMTAuMzc4MyAyMCAxNS4wMDAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class FlameBoldIcon extends StatelessWidget {
  /// Creates the `flame` icon in the bold style.
  const FlameBoldIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Width and height.
  final double? size;

  /// Primary color.
  final Color? color;

  /// Stroke width for stroked styles.
  final double? strokeWidth;

  /// Accent color for duotone styles.
  final Color? secondaryColor;

  /// Accent opacity for duotone styles, from 0 to 1.
  final double? secondaryOpacity;

  /// Accessibility label.
  final String? semanticLabel;

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'flame',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20 15.0002C20 19.2547 17.3819 21.1216 15.3588 21.7512C14.9274 21.8854 14.6438 21.3825 14.9019 21.0116C15.7823 19.7464 16.8 17.8161 16.8 16.0002C16.8 14.0496 15.1559 11.7467 13.8721 10.3263C13.5786 10.0016 13.0667 10.2164 13.0507 10.6539C12.9976 12.1031 12.7689 14.042 11.7828 15.5616C11.6241 15.8062 11.2872 15.8264 11.1063 15.5977C10.7982 15.208 10.4901 14.7267 10.182 14.3464C10.016 14.1416 9.71604 14.1388 9.52461 14.32C8.77825 15.0267 7.73333 16.1288 7.73333 17.5002C7.73333 18.4301 8.0936 19.405 8.50007 20.1893C8.72368 20.6208 8.32607 21.1402 7.89573 20.9144C6.11307 19.9789 4 18.0838 4 15.0002C4 11.8538 8.31029 7.49503 9.95605 3.37712C10.2157 2.72733 11.0161 2.42199 11.5727 2.84603C14.9439 5.41409 20 10.3783 20 15.0002Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => data;

  @override
  Widget build(BuildContext context) {
    return SolarIcon(
      _data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }
}
