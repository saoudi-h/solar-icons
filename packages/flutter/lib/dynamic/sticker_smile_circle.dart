// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sticker-smile-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `StickerSmileCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class StickerSmileCircleIcon extends StatelessWidget {
  /// Creates the `sticker-smile-circle` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const StickerSmileCircleIcon({
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
    name: 'sticker-smile-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.9358 13.1007C17.804 12.7969 18.8834 12.756 21.1392 12.7508H22.7242C22.7167 12.859 22.7348 12.6434 22.7242 12.7508C22.6895 13.1321 22.5227 13.4894 22.2526 13.7608L13.7454 22.3107C13.4821 22.5754 13.1241 22.7242 12.7508 22.7242C12.6434 22.7348 12.859 22.7167 12.7508 22.7242V21.1392C12.756 18.8834 12.7969 17.804 13.1007 16.9358C13.7289 15.1405 15.1405 13.7289 16.9358 13.1007Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5515 16.8809C11.2763 17.9436 11.2521 19.2445 11.2501 21.22V22.7243C5.66292 22.3393 1.25 17.685 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.685 1.25 22.3393 5.66292 22.7243 11.2501H21.22C18.9634 11.2524 17.587 11.2837 16.4403 11.6849C14.6151 12.3236 13.1098 13.6152 12.1975 15.2866C12.1782 15.2885 12.1589 15.2911 12.1396 15.2945C11.0656 15.4824 10.0235 15.4383 9.09494 15.2056C8.69315 15.1049 8.2858 15.349 8.1851 15.7508C8.0844 16.1526 8.32847 16.5599 8.73026 16.6606C9.61622 16.8827 10.5717 16.9615 11.5515 16.8809ZM14.8977 11.2234C15.4311 11.0805 15.6898 10.3159 15.4754 9.51572C15.2609 8.71552 14.6547 8.18271 14.1212 8.32565C13.5877 8.4686 13.3291 9.23316 13.5435 10.0334C13.7579 10.8336 14.3642 11.3664 14.8977 11.2234ZM9.10225 12.7764C9.63571 12.6335 9.89436 11.8689 9.67994 11.0687C9.46553 10.2685 8.85925 9.73569 8.32579 9.87863C7.79232 10.0216 7.53368 10.7861 7.74809 11.5863C7.9625 12.3865 8.56878 12.9194 9.10225 12.7764Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'sticker-smile-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.7911 13.3425C17.5719 13.0693 18.5429 13.0318 20.5714 13.0271H21.9972C21.966 13.37 21.8162 13.6922 21.5734 13.9363L13.922 21.6248C13.6852 21.8627 13.3631 21.9968 13.0275 21.9968V20.571C13.0322 18.5425 13.0697 17.5716 13.3429 16.7908C13.3643 16.7295 13.3888 16.6694 13.4122 16.6091C13.3957 16.6517 13.378 16.694 13.3624 16.7371L13.2823 16.574L13.2296 16.5886C11.6743 17.0054 10.1169 17.0083 8.73059 16.6609C8.3288 16.5602 8.08496 16.1525 8.18567 15.7507C8.2864 15.3491 8.69319 15.1053 9.09485 15.2058C10.2251 15.4891 11.5233 15.4924 12.8409 15.1394C14.1586 14.7864 15.2811 14.1343 16.1183 13.324C16.3836 13.0671 16.7901 13.0453 17.0792 13.2546C16.9797 13.2808 16.8839 13.3101 16.7911 13.3425Z" fill="currentColor"/>
<path d="M8.32629 9.87866C8.8597 9.73594 9.46543 10.269 9.67981 11.0691C9.89407 11.8691 9.63592 12.633 9.10266 12.7761C8.56925 12.9191 7.96264 12.3867 7.74817 11.5867C7.53375 10.7865 7.79283 10.0216 8.32629 9.87866Z" fill="currentColor"/>
<path d="M14.1212 8.32593C14.6546 8.18301 15.2612 8.71536 15.4757 9.51538C15.6901 10.3156 15.431 11.0804 14.8976 11.2234C14.3642 11.3661 13.7584 10.833 13.5441 10.033C13.3298 9.23302 13.588 8.46905 14.1212 8.32593Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.0278 21.9478C12.6899 21.9823 12.347 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 12.347 21.9823 12.6899 21.9478 13.0278H20.5715C18.5428 13.0325 17.5722 13.0693 16.7914 13.3425C15.1769 13.9075 13.9075 15.1769 13.3425 16.7914C13.0693 17.5722 13.0325 18.5428 13.0278 20.5715V21.9478Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'sticker-smile-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 12.6477 21.7004 13.2503 21.2424 13.7083L13.7083 21.2424C13.2503 21.7004 12.6477 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C12 19.2071 12 17.8107 12.3928 16.688C13.0964 14.6773 14.6773 13.0964 16.688 12.3928C17.8107 12 19.2071 12 22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9923 9.64461C15.1353 10.1781 15.0349 10.6685 14.7682 10.7399C14.5014 10.8114 14.1693 10.4369 14.0264 9.90343C13.8835 9.36996 13.9838 8.87956 14.2505 8.80809C14.5173 8.73662 14.8494 9.11114 14.9923 9.64461Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="8.71395" cy="11.3277" rx="0.5" ry="1" transform="rotate(-15 8.71395 11.3277)" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.7008 15.947C11.3779 16.2472 10.0733 16.2245 8.9126 15.9336" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'sticker-smile-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 17.5228 6.47715 22 12 22C12.6477 22 13.2503 21.7004 13.7083 21.2424L21.2424 13.7083C21.7004 13.2503 22 12.6477 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C12 19.2071 12 17.8107 12.3928 16.688C13.0964 14.6773 14.6773 13.0964 16.688 12.3928C17.8107 12 19.2071 12 22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9923 9.64461C15.1353 10.1781 15.0349 10.6685 14.7682 10.7399C14.5014 10.8114 14.1693 10.4369 14.0264 9.90343C13.8835 9.36996 13.9838 8.87956 14.2505 8.80809C14.5173 8.73662 14.8494 9.11114 14.9923 9.64461Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="8.71395" cy="11.3277" rx="0.5" ry="1" transform="rotate(-15 8.71395 11.3277)" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.7008 15.947C11.3779 16.2472 10.0733 16.2245 8.9126 15.9336" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'sticker-smile-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22C12 19.2071 12 17.8107 12.3928 16.688C13.0964 14.6773 14.6773 13.0964 16.688 12.3928C17.8107 12 19.2071 12 22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9923 9.64461C15.1353 10.1781 15.0349 10.6685 14.7682 10.7399C14.5014 10.8114 14.1693 10.4369 14.0264 9.90343C13.8835 9.36996 13.9838 8.87956 14.2505 8.80809C14.5173 8.73662 14.8494 9.11114 14.9923 9.64461Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="8.71395" cy="11.3277" rx="0.5" ry="1" transform="rotate(-15 8.71395 11.3277)" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.7008 15.947C11.3779 16.2472 10.0733 16.2245 8.9126 15.9336" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 17.5228 6.47715 22 12 22C12.6477 22 13.2503 21.7004 13.7083 21.2424L21.2424 13.7083C21.7004 13.2503 22 12.6477 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'sticker-smile-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M15.4754 9.51572C15.6898 10.3159 15.4311 11.0805 14.8977 11.2234C14.3642 11.3664 13.7579 10.8336 13.5435 10.0334C13.3291 9.23316 13.5877 8.4686 14.1212 8.32565C14.6547 8.18271 15.2609 8.71552 15.4754 9.51572Z" fill="currentColor"/>
<path d="M9.67994 11.0687C9.89436 11.8689 9.63571 12.6335 9.10225 12.7764C8.56878 12.9194 7.9625 12.3865 7.74809 11.5863C7.53368 10.7861 7.79232 10.0216 8.32579 9.87863C8.85925 9.73569 9.46553 10.2685 9.67994 11.0687Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 16.8562 6.49219 20.8383 11.2501 21.22C11.2521 19.2445 11.2763 17.9436 11.5515 16.8809C10.5717 16.9615 9.61622 16.8827 8.73026 16.6606C8.32847 16.5599 8.0844 16.1526 8.1851 15.7508C8.2858 15.349 8.69315 15.1049 9.09494 15.2056C10.0235 15.4383 11.0656 15.4824 12.1396 15.2945C12.1589 15.2911 12.1782 15.2885 12.1975 15.2866C13.1098 13.6152 14.6151 12.3236 16.4403 11.6849C17.587 11.2837 18.9634 11.2524 21.22 11.2501C20.8383 6.49219 16.8562 2.75 12 2.75ZM21.1392 12.7508C18.8834 12.756 17.804 12.7969 16.9358 13.1007C15.1405 13.7289 13.7289 15.1405 13.1007 16.9358C12.7969 17.804 12.756 18.8834 12.7508 21.1392L21.1392 12.7508ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 12.3623 22.7321 12.7206 22.697 13.0741L22.6705 13.3408L13.3408 22.6705L13.0741 22.697C12.7206 22.7321 12.3623 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>''',
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
