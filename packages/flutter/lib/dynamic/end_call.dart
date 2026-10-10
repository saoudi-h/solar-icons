// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `end-call` icon in every style.
///
/// Prefer the static widgets (e.g. `EndCallLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class EndCallIcon extends StatelessWidget {
  /// Creates the `end-call` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const EndCallIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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

  static const bold = SolarIconData(
    name: 'end-call',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8 13.4782L8 12.8617C8 12.8617 8 11.3963 12 11.3963C16 11.3963 16 12.8617 16 12.8617V13.25C16 14.2064 16.7227 15.0192 17.7004 15.1625L19.7004 15.4556C20.9105 15.6329 22 14.7267 22 13.5429V11.4183C22 10.8313 21.8162 10.2542 21.3703 9.85601C20.2296 8.83732 17.4208 7 12 7C6.25141 7 3.44027 9.58269 2.44083 10.7889C2.1247 11.1704 2 11.6525 2 12.1414L2 14.0643C2 15.3623 3.29561 16.292 4.57997 15.9156L6.57997 15.3295C7.42329 15.0823 8 14.3305 8 13.4782Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'end-call',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8 12.862L8 13.4785C8 14.3308 7.42329 15.0826 6.57997 15.3297L4.57997 15.9159C3.29561 16.2923 2 15.3626 2 14.0646L2 12.1417C2 11.6528 2.1247 11.1707 2.44083 10.7892C3.17325 9.90523 4.87862 8.28205 8 7.47782V12.862ZM16 12.862V13.2502C16 14.2066 16.7227 15.0195 17.7004 15.1628L19.7004 15.4558C20.9105 15.6332 22 14.727 22 13.5432V11.4185C22 10.8316 21.8162 10.2545 21.3703 9.85628C20.5528 9.12621 18.8785 7.97567 16 7.38232V12.862Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 11.3963C16 11.3963 16 12.8617 16 12.8617V7.38205C14.862 7.14749 13.5359 7 12 7C10.4641 7 9.13797 7.18435 8 7.47755V12.8617C8 12.8617 8 11.3963 12 11.3963Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'end-call',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21.2762 10.1735C20.1114 9.10176 17.2607 7.14901 11.8501 7.0064C10.3461 6.96676 9.04813 7.11389 7.93408 7.37433" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9994 13.9606C22.0298 15.1711 20.9656 16.0691 19.7532 15.856L17.7494 15.5036C16.7699 15.3314 16.0277 14.4812 16.0031 13.5031L15.9931 13.1061C15.9931 13.1061 15.9555 11.6075 11.963 11.5023C7.97053 11.3971 8.00817 12.8956 8.00817 12.8956L8.024 13.5261C8.04588 14.3976 7.48956 15.1513 6.65417 15.3818L4.67298 15.9286C3.40069 16.2797 2.08365 15.2949 2.05032 13.9676L2.00094 12.0012C1.98838 11.5012 2.10047 11.0116 2.40621 10.6297C2.76875 10.1769 3.38071 9.53282 4.30675 8.9126" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'end-call',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 7C6.25141 7 3.44027 9.58269 2.44083 10.7889C2.1247 11.1704 2 11.6525 2 12.1414V14.0643C2 15.3623 3.29561 16.292 4.57997 15.9156L6.57997 15.3295C7.42329 15.0823 8 14.3305 8 13.4782V12.8617C8 12.8617 8 11.3963 12 11.3963C16 11.3963 16 12.8617 16 12.8617V13.25C16 14.2064 16.7227 15.0192 17.7004 15.1625L19.7004 15.4556C20.9105 15.6329 22 14.7267 22 13.5429V11.4183C22 10.8313 21.8162 10.2542 21.3703 9.85601C20.2296 8.83732 17.4208 7 12 7Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'end-call',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 12.8617L8 13.4782C8 14.3304 7.42329 15.0823 6.57997 15.3294L4.57997 15.9155C3.29561 16.2919 2 15.3623 2 14.0643L2 12.1414C2 11.6525 2.1247 11.1704 2.44083 10.7889M21.3703 9.85596C21.8162 10.2541 22 10.8313 22 11.4182V13.5429C22 14.7266 20.9105 15.6329 19.7004 15.4555L17.7004 15.1624C16.7227 15.0192 16 14.2063 16 13.2499V12.8617" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16 13.2499V12.8617C16 12.8617 16.0001 11.3963 12.0001 11.3963C8.00009 11.3963 8 12.8617 8 12.8617L8 13.4782C8 14.3304 7.42329 15.0823 6.57997 15.3294L4.57997 15.9155C3.29561 16.2919 2 15.3623 2 14.0643V12.1414C2 11.6525 2.1247 11.1704 2.44083 10.7889C3.44027 9.58263 6.2515 7 12.0001 7C17.4209 7 20.2296 8.83726 21.3703 9.85596C21.8162 10.2541 22 10.8313 22 11.4182V13.5429C22 14.7267 20.9105 15.6329 19.7004 15.4555L17.7004 15.1624C16.7227 15.0192 16 14.2063 16 13.2499Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'end-call',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 7.75C6.51318 7.75 3.90179 10.2012 3.01834 11.2674C2.84345 11.4785 2.75 11.7741 2.75 12.1414L2.75 14.0643C2.75 14.8281 3.5319 15.4412 4.36905 15.1959L6.36905 14.6097C6.90669 14.4522 7.25 13.9833 7.25 13.4782L7.25 12.8617L8 12.8617C7.25 12.8617 7.25 12.8607 7.25 12.8597L7.25001 12.8576L7.25004 12.8534L7.25019 12.8444L7.25085 12.8245C7.25147 12.8104 7.25248 12.7946 7.25406 12.7773C7.25722 12.7426 7.26263 12.7016 7.27167 12.6552C7.2898 12.5622 7.32239 12.4484 7.37982 12.3222C7.49703 12.0645 7.7059 11.7811 8.05672 11.524C8.74267 11.0214 9.93056 10.6463 12 10.6463C14.0694 10.6463 15.2573 11.0214 15.9433 11.524C16.2941 11.7811 16.503 12.0645 16.6202 12.3222C16.6776 12.4484 16.7102 12.5622 16.7283 12.6552C16.7374 12.7016 16.7428 12.7426 16.7459 12.7773C16.7475 12.7946 16.7485 12.8104 16.7492 12.8245L16.7498 12.8444L16.75 12.8534L16.75 12.8576L16.75 12.8597C16.75 12.8607 16.75 12.8617 16 12.8617H16.75V13.25C16.75 13.8157 17.1811 14.3284 17.8091 14.4204L19.8091 14.7135C20.5953 14.8287 21.25 14.2406 21.25 13.5429V11.4183C21.25 10.9778 21.1133 10.632 20.8708 10.4154C19.8648 9.51708 17.233 7.75 12 7.75ZM15.25 12.9335V13.25C15.25 14.5971 16.2642 15.71 17.5916 15.9046L19.5916 16.1977C21.2257 16.4371 22.75 15.2128 22.75 13.5429V11.4183C22.75 10.6848 22.5191 9.87638 21.8699 9.29661C20.5944 8.15756 17.6087 6.25 12 6.25C5.98964 6.25 2.97874 8.96419 1.86331 10.3104C1.40595 10.8624 1.25 11.5309 1.25 12.1414L1.25 14.0643C1.25 15.8966 3.05932 17.1428 4.7909 16.6353L6.7909 16.0492C7.93988 15.7125 8.75 14.6777 8.75 13.4782L8.75 12.9335C8.76534 12.9044 8.8133 12.8292 8.94328 12.734C9.25733 12.5039 10.0694 12.1463 12 12.1463C13.9306 12.1463 14.7427 12.5039 15.0567 12.734C15.1867 12.8292 15.2347 12.9044 15.25 12.9335Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
