// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjQxMjk3IDEyLjMyMTJDOC41MDM4NiAxMi40NDMgOS4zNjUwMSAxMy4zMDc1IDkuNDg2MjIgMTQuNDAzM0M5LjU3OTU3IDE1LjI0NjkgMTAuMTE3NiAxNS45NzUxIDEwLjg5NDQgMTYuMzA5NUwxMi42NjY5IDE3LjA0NDlMOC45MjA3OSAyMC44MDc2QzcuMzM3NTYgMjIuMzk3NyA0Ljc3MDYyIDIyLjM5NzYgMy4xODczOSAyMC44MDc2QzEuNjA0MTcgMTkuMjE3MyAxLjYwNDI0IDE2LjYzOSAzLjE4NzM5IDE1LjA0ODhMNS45MDMyMSAxMi4zMjEySDcuNDEyOTdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMy4zNjIyIDIuMjMzMzRDMTMuNjc1MyAxLjkyMTYxIDE0LjE4MjMgMS45MjIxOCAxNC40OTQgMi4yMzUyOUwyMS43NjY1IDkuNTQwOTZDMjIuMDc4MSA5Ljg1Mzk4IDIyLjA3NzQgMTAuMzYwMSAyMS43NjQ1IDEwLjY3MThDMjEuNDUxNCAxMC45ODM1IDIwLjk0NDQgMTAuOTgzIDIwLjYzMjcgMTAuNjY5OUwxMy4zNjAyIDMuMzY0MkMxMy4wNDg2IDMuMDUxMTggMTMuMDQ5NCAyLjU0NTA5IDEzLjM2MjIgMi4yMzMzNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTQuMDkwMSA0LjA5NzY2TDMuMTg3NDQgMTUuMDQ4NUMxLjYwNDE5IDE2LjYzODggMS42MDQxOSAxOS4yMTcxIDMuMTg3NDQgMjAuODA3NEM0Ljc3MDcgMjIuMzk3NiA3LjMzNzY4IDIyLjM5NzYgOC45MjA5NCAyMC44MDc0TDE5LjgyMzYgOS44NTY1MkwxNC4wOTAxIDQuMDk3NjZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class TestTubeMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `test-tube-minimalistic` icon in the boldDuotone style.
  const TestTubeMinimalisticBoldDuotoneIcon({
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
    name: 'test-tube-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.41297 12.3212C8.50386 12.443 9.36501 13.3075 9.48622 14.4033C9.57957 15.2469 10.1176 15.9751 10.8944 16.3095L12.6669 17.0449L8.92079 20.8076C7.33756 22.3977 4.77062 22.3976 3.18739 20.8076C1.60417 19.2173 1.60424 16.639 3.18739 15.0488L5.90321 12.3212H7.41297Z" fill="currentColor"/>
<path d="M13.3622 2.23334C13.6753 1.92161 14.1823 1.92218 14.494 2.23529L21.7665 9.54096C22.0781 9.85398 22.0774 10.3601 21.7645 10.6718C21.4514 10.9835 20.9444 10.983 20.6327 10.6699L13.3602 3.3642C13.0486 3.05118 13.0494 2.54509 13.3622 2.23334Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.0901 4.09766L3.18744 15.0485C1.60419 16.6388 1.60419 19.2171 3.18744 20.8074C4.7707 22.3976 7.33768 22.3976 8.92094 20.8074L19.8236 9.85652L14.0901 4.09766Z" fill="currentColor"/>''',
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
