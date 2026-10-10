// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `earth` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNy45MDU0IDMuOTI4NzFMMTcuOTM3NiAzLjk5OTUxQzE4LjE3MTcgNC43MTAwNCAxNy43MDM1IDYuMTMxMDkgMTcuMjM1NCA2Ljg0MTYyQzE3LjA2NTggNy4wOTg5OCAxNi42ODEyIDcuNDE4NSAxNi4yNTk3IDcuNzIxMzdDMTUuMzA5MiA4LjQwNDI4IDE0LjEwOTcgOC43NDIwNSAxMy40OTk4IDkuOTk5NTFDMTMuMzI1NSAxMC4zNTkgMTMuMzMyOSAxMC43MTAzIDEzLjQxNjggMTEuMDE1OEMxMy40NzcxIDExLjIzNTQgMTMuNTE1NiAxMS40NzQgMTMuNTE2MiAxMS43MDc1QzEzLjUxODIgMTIuNDYyNCAxMi43NTQ3IDEzLjAwNzggMTEuOTk5OCAxMi45OTk1QzEwLjAzNTUgMTIuOTc4MSA4Ljc0OTY4IDExLjM5NTEgOC41NzQ2NSA5LjQ0Njg4QzguMzg3MzkgNy4zNjI2NyA2Ljc4MDA4IDUuNDIwNTcgNS45OTk4NCA0LjcxMDA0TDUuNTk2NjggNC4zMTg1NiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIxLjkyOTEgMTMuMjIyN0MyMS42MTkgMTQuMjY5OSAyMS4xNjk5IDE2LjM3NzQgMTcuNzE4MiAxNi40MTM0QzE3LjcxODIgMTYuNDEzNCAxNC40MjQ2IDE2LjQxMzQgMTMuNDM2NSAxOC4yNzU1QzEyLjY4MzcgMTkuNjk0IDEzLjA2NTkgMjEuMjI1MSAxMy4zODg1IDIxLjkwNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class EarthLineDuotoneIcon extends StatelessWidget {
  /// Creates the `earth` icon in the lineDuotone style.
  const EarthLineDuotoneIcon({
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
    name: 'earth',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.9054 3.92871L17.9376 3.99951C18.1717 4.71004 17.7035 6.13109 17.2354 6.84162C17.0658 7.09898 16.6812 7.4185 16.2597 7.72137C15.3092 8.40428 14.1097 8.74205 13.4998 9.99951C13.3255 10.359 13.3329 10.7103 13.4168 11.0158C13.4771 11.2354 13.5156 11.474 13.5162 11.7075C13.5182 12.4624 12.7547 13.0078 11.9998 12.9995C10.0355 12.9781 8.74968 11.3951 8.57465 9.44688C8.38739 7.36267 6.78008 5.42057 5.99984 4.71004L5.59668 4.31856" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21.9291 13.2227C21.619 14.2699 21.1699 16.3774 17.7182 16.4134C17.7182 16.4134 14.4246 16.4134 13.4365 18.2755C12.6837 19.694 13.0659 21.2251 13.3885 21.904" stroke="currentColor" stroke-linecap="round"/>''',
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
