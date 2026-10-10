// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alarm-add` icon in every style.
///
/// Prefer the static widgets (e.g. `AlarmAddLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class AlarmAddIcon extends StatelessWidget {
  /// Creates the `alarm-add` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const AlarmAddIcon({
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
    name: 'alarm-add',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.0001 22.0001C16.9707 22.0001 21.0001 17.9707 21.0001 13.0001C21.0001 8.02954 16.9707 4.0001 12.0001 4.0001C7.02954 4.0001 3.0001 8.02954 3.0001 13.0001C3.0001 17.9707 7.02954 22.0001 12.0001 22.0001ZM12.0001 9.2501C12.4143 9.2501 12.7501 9.58589 12.7501 10.0001V12.2501H15.0001C15.4143 12.2501 15.7501 12.5859 15.7501 13.0001C15.7501 13.4143 15.4143 13.7501 15.0001 13.7501H12.7501L12.7501 16.0001C12.7501 16.4143 12.4143 16.7501 12.0001 16.7501C11.5859 16.7501 11.2501 16.4143 11.2501 16.0001V13.7501H9.0001C8.58589 13.7501 8.2501 13.4143 8.2501 13.0001C8.2501 12.5859 8.58589 12.2501 9.0001 12.2501H11.2501L11.2501 10.0001C11.2501 9.58589 11.5859 9.2501 12.0001 9.2501Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.13612 1.6026C8.35566 1.95386 8.24887 2.41657 7.89762 2.6361L3.8976 5.1361C3.54634 5.35563 3.08363 5.24885 2.8641 4.8976C2.64457 4.54634 2.75135 4.08363 3.1026 3.8641L7.10263 1.3641C7.45388 1.14457 7.91659 1.25135 8.13612 1.6026ZM15.8641 1.6026C16.0836 1.25135 16.5463 1.14457 16.8976 1.3641L20.8976 3.8641C21.2489 4.08363 21.3556 4.54635 21.1361 4.8976C20.9166 5.24885 20.4539 5.35563 20.1026 5.1361L16.1026 2.6361C15.7513 2.41657 15.6446 1.95385 15.8641 1.6026Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'alarm-add',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.9998 9.24964C12.414 9.24964 12.7498 9.58543 12.7498 9.99964V12.2496H14.9998C15.414 12.2496 15.7498 12.5854 15.7498 12.9996C15.7498 13.4139 15.414 13.7496 14.9998 13.7496H12.7498V15.9996C12.7498 16.4139 12.414 16.7496 11.9998 16.7496C11.5856 16.7496 11.2498 16.4139 11.2498 15.9996V13.7496H8.99981C8.5856 13.7496 8.24981 13.4139 8.24981 12.9996C8.24982 12.5854 8.5856 12.2496 8.99981 12.2496H11.2498V9.99964C11.2498 9.58543 11.5856 9.24964 11.9998 9.24964Z" fill="currentColor"/>
<path d="M7.23516 2.10999C7.57686 1.89853 8.02644 2.00107 8.24004 2.33949C8.45358 2.67795 8.35013 3.12391 8.0086 3.33558L4.11602 5.74574C3.77434 5.95693 3.32465 5.85362 3.11114 5.51527C2.89758 5.17677 3.00097 4.73081 3.34258 4.51917L7.23516 2.10999Z" fill="currentColor"/>
<path d="M15.7596 2.33949C15.9732 2.00107 16.4228 1.89854 16.7645 2.10999L20.657 4.51917C20.9986 4.73081 21.102 5.17677 20.8885 5.51527C20.675 5.85362 20.2253 5.95693 19.8836 5.74574L15.991 3.33558C15.6495 3.12391 15.546 2.67794 15.7596 2.33949Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C16.9706 22 21 17.9706 21 13C21 8.02944 16.9706 4 12 4C7.02944 4 3 8.02944 3 13C3 17.9706 7.02944 22 12 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'alarm-add',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 13L12 13M12 13L9 13M12 13L12 10M12 13L12 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.5 4.5L7.50002 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 4.5L16.5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 5.20404C8.82378 4.43827 10.3607 4 12 4C16.9706 4 21 8.02944 21 13C21 17.9706 16.9706 22 12 22C7.02944 22 3 17.9706 3 13C3 11.3607 3.43827 9.82378 4.20404 8.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'alarm-add',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="13" r="9" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 13L12 13M12 13L9 13M12 13L12 10M12 13L12 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.5 4.5L7.50002 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 4.5L16.5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'alarm-add',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 13L12 13M12 13L9 13M12 13L12 10M12 13L12 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.5 4.5L7.50002 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 4.5L16.5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="13" r="9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'alarm-add',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.13602 1.6026C8.35556 1.95386 8.24877 2.41657 7.89752 2.6361L3.8975 5.1361C3.54624 5.35563 3.08353 5.24885 2.864 4.8976C2.64447 4.54634 2.75125 4.08363 3.1025 3.8641L7.10253 1.3641C7.45378 1.14457 7.91649 1.25135 8.13602 1.6026ZM15.864 1.6026C16.0835 1.25135 16.5462 1.14457 16.8975 1.3641L20.8975 3.8641C21.2488 4.08363 21.3555 4.54635 21.136 4.8976C20.9165 5.24885 20.4538 5.35563 20.1025 5.1361L16.1025 2.6361C15.7512 2.41657 15.6445 1.95385 15.864 1.6026ZM12 4.7501C7.44365 4.7501 3.75 8.44375 3.75 13.0001C3.75 17.5564 7.44365 21.2501 12 21.2501C16.5563 21.2501 20.25 17.5564 20.25 13.0001C20.25 8.44375 16.5563 4.7501 12 4.7501ZM2.25 13.0001C2.25 7.61532 6.61522 3.2501 12 3.2501C17.3848 3.2501 21.75 7.61532 21.75 13.0001C21.75 18.3849 17.3848 22.7501 12 22.7501C6.61522 22.7501 2.25 18.3849 2.25 13.0001ZM12 9.2501C12.4142 9.2501 12.75 9.58589 12.75 10.0001L12.75 12.2501H15C15.4142 12.2501 15.75 12.5859 15.75 13.0001C15.75 13.4143 15.4142 13.7501 15 13.7501H12.75V16.0001C12.75 16.4143 12.4142 16.7501 12 16.7501C11.5858 16.7501 11.25 16.4143 11.25 16.0001V13.7501H9C8.58579 13.7501 8.25 13.4143 8.25 13.0001C8.25 12.5859 8.58579 12.2501 9 12.2501H11.25L11.25 10.0001C11.25 9.58589 11.5858 9.2501 12 9.2501Z" fill="currentColor"/>''',
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
