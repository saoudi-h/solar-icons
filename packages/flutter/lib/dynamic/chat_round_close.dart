// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-close` icon in every style.
///
/// Prefer the static widgets (e.g. `ChatRoundCloseLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChatRoundCloseIcon extends StatelessWidget {
  /// Creates the `chat-round-close` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ChatRoundCloseIcon({
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
    name: 'chat-round-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C10.4003 22 8.88867 21.6239 7.54785 20.9561C7.19153 20.7786 6.78396 20.7204 6.39941 20.8232L4.17383 21.4189C3.20749 21.6775 2.3225 20.7925 2.58105 19.8262L3.17676 17.6006C3.27965 17.216 3.22142 16.8085 3.04395 16.4521C2.37612 15.1113 2 13.5997 2 12C2 6.47715 6.47715 2 12 2ZM15.0303 8.96973C14.7374 8.67684 14.2626 8.67685 13.9697 8.96973L12 10.9395L10.0303 8.96973C9.73738 8.67684 9.26262 8.67684 8.96973 8.96973C8.67684 9.26262 8.67683 9.73738 8.96973 10.0303L10.9395 12L8.96973 13.9697C8.67684 14.2626 8.67683 14.7374 8.96973 15.0303C9.26262 15.3231 9.7374 15.3231 10.0303 15.0303L12 13.0605L13.9697 15.0303C14.2626 15.3231 14.7374 15.3231 15.0303 15.0303C15.3231 14.7374 15.3231 14.2626 15.0303 13.9697L13.0605 12L15.0303 10.0303C15.3231 9.7374 15.3231 9.26262 15.0303 8.96973Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chat-round-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.9697 8.96966C14.2626 8.67679 14.7373 8.67678 15.0302 8.96966C15.3231 9.26255 15.3231 9.73732 15.0302 10.0302L13.0605 11.9999L15.0302 13.9697C15.3231 14.2626 15.3231 14.7373 15.0302 15.0302C14.7373 15.3231 14.2626 15.3231 13.9697 15.0302L11.9999 13.0605L10.0302 15.0302C9.73732 15.3231 9.26256 15.3231 8.96967 15.0302C8.67678 14.7373 8.67678 14.2626 8.96967 13.9697L10.9394 11.9999L8.96967 10.0302C8.67678 9.73732 8.67678 9.26256 8.96967 8.96966C9.26256 8.67678 9.73733 8.67677 10.0302 8.96966L11.9999 10.9394L13.9697 8.96966Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'chat-round-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17 3.33782C15.5291 2.48697 13.8214 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22C17.5228 22 22 17.5228 22 12C22 10.1786 21.513 8.47087 20.6622 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 9.50002L9.5 14.5M9.49998 9.5L14.5 14.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chat-round-close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 9.50002L9.5 14.5M9.49998 9.5L14.5 14.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chat-round-close',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.5 9.50002L9.5 14.5M9.49998 9.5L14.5 14.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chat-round-close',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M13.9697 8.96973C14.2626 8.67685 14.7374 8.67684 15.0303 8.96973C15.3231 9.26262 15.3231 9.7374 15.0303 10.0303L13.0605 12L15.0303 13.9697C15.3231 14.2626 15.3231 14.7374 15.0303 15.0303C14.7374 15.3231 14.2626 15.3231 13.9697 15.0303L12 13.0605L10.0303 15.0303C9.7374 15.3231 9.26262 15.3231 8.96973 15.0303C8.67683 14.7374 8.67684 14.2626 8.96973 13.9697L10.9395 12L8.96973 10.0303C8.67683 9.73738 8.67684 9.26262 8.96973 8.96973C9.26262 8.67684 9.73738 8.67684 10.0303 8.96973L12 10.9395L13.9697 8.96973Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C10.2817 22.75 8.65527 22.3463 7.21289 21.6279C6.99771 21.5208 6.77762 21.4984 6.59277 21.5479L4.36719 22.1426C2.84335 22.5503 1.4497 21.1566 1.85742 19.6328L2.45215 17.4072C2.50161 17.2224 2.4792 17.0023 2.37207 16.7871C1.65365 15.3447 1.25 13.7183 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25ZM12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 13.4811 3.09757 14.8789 3.71484 16.1182C3.96256 16.6156 4.05767 17.2108 3.90137 17.7949L3.30566 20.0205C3.19636 20.4293 3.57073 20.8036 3.97949 20.6943L6.20508 20.0986C6.78925 19.9423 7.38445 20.0374 7.88184 20.2852C9.12113 20.9024 10.5189 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75Z" fill="currentColor"/>''',
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
