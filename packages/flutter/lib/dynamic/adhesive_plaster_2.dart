// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `adhesive-plaster-2` icon in every style.
///
/// Prefer the static widgets (e.g. `AdhesivePlaster2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class AdhesivePlaster2Icon extends StatelessWidget {
  /// Creates the `adhesive-plaster-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const AdhesivePlaster2Icon({
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
    name: 'adhesive-plaster-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20.9094 13.3319L13.3319 20.9094C15.4517 22.5128 18.4829 22.3482 20.4155 20.4155C22.3482 18.4829 22.5128 15.4517 20.9094 13.3319Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12.2347 19.8852L19.8852 12.2347L11.7653 4.1148L4.1148 11.7653L12.2347 19.8852ZM9.87864 11.2929C10.2692 11.6834 10.2692 12.3166 9.87864 12.7071C9.48812 13.0976 8.85496 13.0976 8.46443 12.7071C8.07391 12.3166 8.07391 11.6834 8.46443 11.2929C8.85496 10.9024 9.48812 10.9024 9.87864 11.2929ZM12.7073 15.5355C13.0978 15.145 13.0978 14.5118 12.7073 14.1213C12.3167 13.7307 11.6836 13.7307 11.293 14.1213C10.9025 14.5118 10.9025 15.145 11.293 15.5355C11.6836 15.926 12.3167 15.926 12.7073 15.5355ZM12.7073 8.46452C13.0978 8.85505 13.0978 9.48821 12.7073 9.87874C12.3167 10.2693 11.6836 10.2693 11.293 9.87874C10.9025 9.48821 10.9025 8.85505 11.293 8.46452C11.6836 8.074 12.3167 8.074 12.7073 8.46452ZM15.5354 12.7071C15.9259 12.3166 15.9259 11.6834 15.5354 11.2929C15.1449 10.9024 14.5117 10.9024 14.1212 11.2929C13.7306 11.6834 13.7306 12.3166 14.1212 12.7071C14.5117 13.0976 15.1449 13.0976 15.5354 12.7071Z" fill="currentColor"/>
<path d="M3.09061 10.6682L10.6682 3.09061C8.54835 1.48717 5.51714 1.65179 3.58447 3.58447C1.65179 5.51714 1.48717 8.54835 3.09061 10.6682Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'adhesive-plaster-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.416 12.7651C20.5958 12.9449 20.76 13.1344 20.9092 13.3315L13.332 20.9087C13.1349 20.7595 12.9454 20.5953 12.7656 20.4155L12.2354 19.8853L19.8857 12.2349L20.416 12.7651Z" fill="currentColor"/>
<path d="M11.293 14.1216C11.6835 13.7311 12.3165 13.7311 12.707 14.1216C13.0976 14.5121 13.0976 15.1451 12.707 15.5356C12.3165 15.9262 11.6835 15.9262 11.293 15.5356C10.9024 15.1451 10.9024 14.5121 11.293 14.1216Z" fill="currentColor"/>
<path d="M8.46484 11.2925C8.85531 10.9023 9.48844 10.9023 9.87891 11.2925C10.2694 11.683 10.2694 12.317 9.87891 12.7075C9.48844 13.0977 8.85531 13.0977 8.46484 12.7075C8.07432 12.317 8.07432 11.683 8.46484 11.2925Z" fill="currentColor"/>
<path d="M14.1211 11.2925C14.5116 10.9023 15.1447 10.9023 15.5352 11.2925C15.9257 11.683 15.9257 12.317 15.5352 12.7075C15.1447 13.0977 14.5116 13.0977 14.1211 12.7075C13.7306 12.317 13.7306 11.683 14.1211 11.2925Z" fill="currentColor"/>
<path d="M10.668 3.09033C10.8654 3.23968 11.0553 3.40444 11.2354 3.58447L11.7656 4.11475L4.11523 11.7651L3.58496 11.2349C3.40493 11.0548 3.24017 10.865 3.09082 10.6675L10.668 3.09033Z" fill="currentColor"/>
<path d="M11.293 8.46436C11.6835 8.07383 12.3165 8.07383 12.707 8.46436C13.0976 8.85488 13.0976 9.48789 12.707 9.87842C12.3165 10.2689 11.6835 10.2689 11.293 9.87842C10.9024 9.48789 10.9024 8.85488 11.293 8.46436Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.4155 12.765L11.235 3.58447C9.12233 1.47184 5.69709 1.47184 3.58447 3.58447C1.47184 5.69709 1.47184 9.12233 3.58447 11.235L12.765 20.4155C14.8777 22.5282 18.3029 22.5282 20.4155 20.4155C22.5282 18.3029 22.5282 14.8777 20.4155 12.765Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'adhesive-plaster-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.765 20.4155C14.8777 22.5282 18.3029 22.5282 20.4155 20.4155C22.5282 18.3029 22.5282 14.8777 20.4155 12.765M12.765 20.4155L20.4155 12.765M12.765 20.4155L8.17476 15.8252M5 12.6505L3.58447 11.235C1.47184 9.12233 1.47184 5.69709 3.58447 3.58447C5.69709 1.47184 9.12233 1.47184 11.235 3.58447L15.8252 8.17476M3.58447 11.235L11.235 3.58447M20.4155 12.765L19 11.3495" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.9998 9.17139H11.9999" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.17139 12H9.17149" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 14.8286H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.8284 12H14.8285" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'adhesive-plaster-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20.4155 12.765C22.5282 14.8777 22.5282 18.3029 20.4155 20.4155C18.3029 22.5282 14.8777 22.5282 12.765 20.4155L3.58447 11.235M12.765 20.4155L20.4155 12.765M20.4155 12.765L11.235 3.58447M11.235 3.58447C9.12233 1.47184 5.69709 1.47184 3.58447 3.58447C1.47184 5.69709 1.47184 9.12233 3.58447 11.235M11.235 3.58447L3.58447 11.235" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9.17139H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.17139 12H9.17149" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 14.8286H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.8281 12H14.8282" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'adhesive-plaster-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.765 20.4155C14.8777 22.5282 18.3029 22.5282 20.4155 20.4155C22.5282 18.3029 22.5282 14.8777 20.4155 12.765L11.235 3.58447C9.12233 1.47184 5.69709 1.47184 3.58447 3.58447C1.47184 5.69709 1.47184 9.12233 3.58447 11.235L12.765 20.4155Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.9998 9.17139H11.9999" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.17139 12H9.17149" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 14.8286H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.8284 12H14.8285" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.7651 20.4155L20.4155 12.7651M11.235 3.58447L3.58447 11.235" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'adhesive-plaster-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M9.87864 11.2929C10.2692 11.6834 10.2692 12.3166 9.87864 12.7071C9.48812 13.0976 8.85496 13.0976 8.46443 12.7071C8.07391 12.3166 8.07391 11.6834 8.46443 11.2929C8.85496 10.9024 9.48812 10.9024 9.87864 11.2929Z" fill="currentColor"/>
<path d="M12.7073 15.5355C13.0978 15.145 13.0978 14.5118 12.7073 14.1213C12.3167 13.7307 11.6836 13.7307 11.293 14.1213C10.9025 14.5118 10.9025 15.145 11.293 15.5355C11.6836 15.926 12.3167 15.926 12.7073 15.5355Z" fill="currentColor"/>
<path d="M12.7073 8.46452C13.0978 8.85505 13.0978 9.48821 12.7073 9.87874C12.3167 10.2693 11.6836 10.2693 11.293 9.87874C10.9025 9.48821 10.9025 8.85505 11.293 8.46452C11.6836 8.074 12.3167 8.074 12.7073 8.46452Z" fill="currentColor"/>
<path d="M15.5354 12.7071C15.9259 12.3166 15.9259 11.6834 15.5354 11.2929C15.1449 10.9024 14.5117 10.9024 14.1212 11.2929C13.7306 11.6834 13.7306 12.3166 14.1212 12.7071C14.5117 13.0976 15.1449 13.0976 15.5354 12.7071Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M3.05414 3.05414C5.45965 0.648621 9.35977 0.648621 11.7653 3.05414L20.9459 12.2347C23.3514 14.6402 23.3514 18.5403 20.9459 20.9459C18.5403 23.3514 14.6402 23.3514 12.2347 20.9459L3.05414 11.7653C0.648621 9.35977 0.648621 5.45965 3.05414 3.05414ZM10.1318 3.62692C8.31061 2.31298 5.75399 2.4756 4.1148 4.1148C2.4756 5.75399 2.31298 8.31061 3.62692 10.1318L10.1318 3.62692ZM11.235 4.64513L4.64513 11.235L12.765 19.3549L19.3549 12.765L11.235 4.64513ZM20.3731 13.8682L13.8682 20.3731C15.6894 21.687 18.246 21.5244 19.8852 19.8852C21.5244 18.246 21.687 15.6894 20.3731 13.8682Z" fill="currentColor"/>''',
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
