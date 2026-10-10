// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAxNC4zNTI5QzIyIDE3LjQ3MTcgMTkuNDQxNiAyMCAxNi4yODU3IDIwSDExTTE0LjM4MSA5LjAyNzIxQzE0Ljk3NjcgOC44MTkxMSAxNS42MTc4IDguNzA1ODggMTYuMjg1NyA4LjcwNTg4QzE2Ljk0MDQgOC43MDU4OCAxNy41NjkzIDguODE0NjggMTguMTU1MSA5LjAxNDk4TTguNjY2NjcgMTIuMjQyNkM4LjIwNTI4IDExLjkzNzQgNy42ODA1OSAxMS43MTg0IDcuMTE2MTYgMTEuNjA4OUM2Ljg0NzUgMTEuNTU2NyA2LjU2OTgzIDExLjUyOTQgNi4yODU3MSAxMS41Mjk0QzMuOTE4NzggMTEuNTI5NCAyIDEzLjQyNTYgMiAxNS43NjQ3QzIgMTguMTAzOCAzLjkxODc4IDIwIDYuMjg1NzEgMjBIN003LjExNjE2IDExLjYwODlDNi44ODcwNiAxMC45OTc4IDYuNzYxOSAxMC4zMzY5IDYuNzYxOSA5LjY0NzA2QzYuNzYxOSA2LjUyODI3IDkuMzIwMjggNCAxMi40NzYyIDRDMTUuNDE1OSA0IDE3LjgzNzEgNi4xOTM3MSAxOC4xNTUxIDkuMDE0OThNMTguMTU1MSA5LjAxNDk4QzE4LjgzODEgOS4yNDg1MyAxOS40NjIzIDkuNjA2NDggMjAgMTAuMDYxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMS4wMDA0IDRDMTAuMDg4MiAyLjc4NTU1IDguNjM1ODIgMiA3IDJDNC4yMzg1OCAyIDIgNC4yMzg1OCAyIDdDMiA5LjA1MDMyIDMuMjM0MSAxMC44MTI0IDUgMTEuNTg0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CloudSunBrokenIcon extends StatelessWidget {
  /// Creates the `cloud-sun` icon in the broken style.
  const CloudSunBrokenIcon({
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
    name: 'cloud-sun',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 14.3529C22 17.4717 19.4416 20 16.2857 20H11M14.381 9.02721C14.9767 8.81911 15.6178 8.70588 16.2857 8.70588C16.9404 8.70588 17.5693 8.81468 18.1551 9.01498M8.66667 12.2426C8.20528 11.9374 7.68059 11.7184 7.11616 11.6089C6.8475 11.5567 6.56983 11.5294 6.28571 11.5294C3.91878 11.5294 2 13.4256 2 15.7647C2 18.1038 3.91878 20 6.28571 20H7M7.11616 11.6089C6.88706 10.9978 6.7619 10.3369 6.7619 9.64706C6.7619 6.52827 9.32028 4 12.4762 4C15.4159 4 17.8371 6.19371 18.1551 9.01498M18.1551 9.01498C18.8381 9.24853 19.4623 9.60648 20 10.0614" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.0004 4C10.0882 2.78555 8.63582 2 7 2C4.23858 2 2 4.23858 2 7C2 9.05032 3.2341 10.8124 5 11.584" stroke="currentColor" stroke-linecap="round"/>''',
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
