// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sticker-smile-circle-2` icon in every style.
///
/// Prefer the static widgets (e.g. `StickerSmileCircle2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class StickerSmileCircle2Icon extends StatelessWidget {
  /// Creates the `sticker-smile-circle-2` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const StickerSmileCircle2Icon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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
    name: 'sticker-smile-circle-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.2424 13.7083L13.7083 21.2424C13.6419 21.3087 13.5725 21.3718 13.5004 21.431C13.448 21.4741 13.3943 21.5151 13.3392 21.554C12.9462 21.8314 12.4858 22 12 22C12 21.4484 12 20.9513 12.003 20.5C12.0153 18.6662 12.0776 17.5889 12.3928 16.688C13.0964 14.6773 14.6773 13.0964 16.688 12.3928C17.5889 12.0776 18.6662 12.0153 20.5 12.003C20.9513 12 21.4484 12 22 12C22 12.4858 21.8314 12.9462 21.554 13.3392C21.5151 13.3943 21.4741 13.448 21.431 13.5004C21.3718 13.5725 21.3087 13.6419 21.2424 13.7083Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C6.47715 2 2 6.47715 2 12C2 16.7058 5.2504 20.6524 9.62855 21.7171C10.0829 21.8276 10.5 21.4676 10.5 21C10.4995 19.298 10.499 18.6806 10.6516 17.5894C9.88473 17.4036 9.17479 17.0631 8.55339 16.6025C8.22062 16.3559 8.15082 15.8862 8.39747 15.5534C8.64413 15.2206 9.11385 15.1508 9.44661 15.3975C9.91023 15.7411 10.435 15.9927 10.9991 16.1302C11.6495 14.317 12.8891 12.7963 14.493 11.7932C14.198 11.5324 14 11.0509 14 10.5C14 9.67157 14.4477 9 15 9C15.5523 9 16 9.67157 16 10.5C16 10.7042 15.9728 10.8988 15.9235 11.0763C16.0125 11.0417 16.1022 11.0086 16.1926 10.977C17.5598 10.4986 18.5105 10.4992 21 10.5C21.4676 10.5 21.8276 10.0829 21.7171 9.62855C20.6524 5.2504 16.7058 2 12 2ZM9 12C9.55228 12 10 11.3284 10 10.5C10 9.67157 9.55228 9 9 9C8.44772 9 8 9.67157 8 10.5C8 11.3284 8.44772 12 9 12Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'sticker-smile-circle-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 12.4857 21.8312 12.9458 21.5537 13.3389C21.5148 13.3939 21.4737 13.4477 21.4307 13.5C21.3714 13.5721 21.3085 13.6417 21.2422 13.708L13.708 21.2422C13.6417 21.3085 13.5721 21.3714 13.5 21.4307C13.4477 21.4737 13.3939 21.5148 13.3389 21.5537C12.9458 21.8312 12.4857 22 12 22C12 21.4484 11.9999 20.9513 12.0029 20.5C12.0121 19.1389 12.0481 18.1945 12.1953 17.4297C12.1756 17.5323 12.1586 17.6384 12.1426 17.748C12.0952 17.7492 12.0476 17.75 12 17.75C10.7151 17.75 9.52608 17.3232 8.55371 16.6025C8.22102 16.3559 8.15099 15.8865 8.39746 15.5537C8.64407 15.221 9.11354 15.151 9.44629 15.3975C10.1746 15.9373 11.0541 16.25 12 16.25C12.1964 16.25 12.3902 16.2362 12.5801 16.21C12.5692 16.2351 12.5585 16.2608 12.5479 16.2861C13.3126 14.4676 14.8138 13.0486 16.6885 12.3926C17.5893 12.0775 18.6665 12.0152 20.5 12.0029C20.9513 11.9999 21.4484 12 22 12Z" fill="currentColor"/>
<path d="M9 9C9.55228 9 10 9.67157 10 10.5C10 11.3284 9.55228 12 9 12C8.44771 12 8 11.3284 8 10.5C8 9.67157 8.44771 9 9 9Z" fill="currentColor"/>
<path d="M15 9C15.5523 9 16 9.67157 16 10.5C16 11.3284 15.5523 12 15 12C14.4477 12 14 11.3284 14 10.5C14 9.67157 14.4477 9 15 9Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C17.5228 2 22 6.47715 22 12C21.4484 12 20.9513 12 20.5 12.003C18.6662 12.0153 17.5889 12.0776 16.688 12.3928C14.6773 13.0964 13.0964 14.6773 12.3928 16.688C12.0776 17.5889 12.0153 18.6662 12.003 20.5C12 20.9513 12 21.4484 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'sticker-smile-circle-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 12.6477 21.7004 13.2503 21.2424 13.7083L13.7083 21.2424C13.2503 21.7004 12.6477 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C12 19.2071 12 17.8107 12.3928 16.688C13.0964 14.6773 14.6773 13.0964 16.688 12.3928C17.8107 12 19.2071 12 22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.2981 16.9912C12.1994 16.997 12.1 17 12 17C10.8846 17 9.85038 16.6303 9 16" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'sticker-smile-circle-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 17.5228 6.47715 22 12 22C12.6477 22 13.2503 21.7004 13.7083 21.2424L21.2424 13.7083C21.7004 13.2503 22 12.6477 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C12 19.2071 12 17.8107 12.3928 16.688C13.0964 14.6773 14.6773 13.0964 16.688 12.3928C17.8107 12 19.2071 12 22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.2981 16.9912C12.1994 16.997 12.1 17 12 17C10.8846 17 9.85038 16.6303 9 16" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'sticker-smile-circle-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22C12 19.2071 12 17.8107 12.3928 16.688C13.0964 14.6773 14.6773 13.0964 16.688 12.3928C17.8107 12 19.2071 12 22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.2981 16.9912C12.1994 16.997 12.1 17 12 17C10.8846 17 9.85038 16.6303 9 16" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 17.5228 6.47715 22 12 22C12.6477 22 13.2503 21.7004 13.7083 21.2424L21.2424 13.7083C21.7004 13.2503 22 12.6477 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'sticker-smile-circle-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16 10.5C16 11.3284 15.5523 12 15 12C14.4477 12 14 11.3284 14 10.5C14 9.67157 14.4477 9 15 9C15.5523 9 16 9.67157 16 10.5Z" fill="currentColor"/>
<path d="M10 10.5C10 11.3284 9.55229 12 9 12C8.44772 12 8 11.3284 8 10.5C8 9.67157 8.44772 9 9 9C9.55229 9 10 9.67157 10 10.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 16.8562 6.49219 20.8383 11.2501 21.22C11.2516 19.732 11.2657 18.6267 11.3902 17.7177C10.3395 17.6057 9.36999 17.2078 8.55339 16.6025C8.22062 16.3559 8.15082 15.8862 8.39747 15.5534C8.64413 15.2206 9.11385 15.1508 9.44661 15.3975C10.1122 15.8908 10.9037 16.1944 11.7569 16.2431C12.5684 14.111 14.2803 12.4407 16.4403 11.6849C17.587 11.2837 18.9634 11.2524 21.22 11.2501C20.8383 6.49219 16.8562 2.75 12 2.75ZM21.1392 12.7508C18.8834 12.756 17.804 12.7969 16.9358 13.1007C15.1405 13.7289 13.7289 15.1405 13.1007 16.9358C12.7969 17.804 12.756 18.8834 12.7508 21.1392L21.1392 12.7508ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 12.3623 22.7321 12.7206 22.697 13.0741L22.6705 13.3408L13.3408 22.6705L13.0741 22.697C12.7206 22.7321 12.3623 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
