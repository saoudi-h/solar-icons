// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-call` icon in every style.
///
/// Prefer the static widgets (e.g. `ChatRoundCallLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChatRoundCallIcon extends StatelessWidget {
  /// Creates the `chat-round-call` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ChatRoundCallIcon({
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
    name: 'chat-round-call',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C10.4003 22 8.88837 21.6244 7.54753 20.9565C7.19121 20.7791 6.78393 20.72 6.39939 20.8229L4.17335 21.4185C3.20701 21.677 2.32295 20.793 2.58151 19.8267L3.17712 17.6006C3.28001 17.2161 3.22094 16.8088 3.04346 16.4525C2.37562 15.1116 2 13.5997 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V16C12.75 16.4142 12.4142 16.75 12 16.75C11.5858 16.75 11.25 16.4142 11.25 16V8C11.25 7.58579 11.5858 7.25 12 7.25ZM8.75 10C8.75 9.58579 8.41421 9.25 8 9.25C7.58579 9.25 7.25 9.58579 7.25 10V14C7.25 14.4142 7.58579 14.75 8 14.75C8.41421 14.75 8.75 14.4142 8.75 14V10ZM16 9.25C16.4142 9.25 16.75 9.58579 16.75 10V14C16.75 14.4142 16.4142 14.75 16 14.75C15.5858 14.75 15.25 14.4142 15.25 14V10C15.25 9.58579 15.5858 9.25 16 9.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chat-round-call',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.0004 6.77539C11.5448 6.77539 11.1754 7.14476 11.1754 7.60039V16.4004C11.1754 16.856 11.5448 17.2254 12.0004 17.2254C12.456 17.2254 12.8254 16.856 12.8254 16.4004V7.60039C12.8254 7.14476 12.456 6.77539 12.0004 6.77539Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M7.60039 8.97539C7.14476 8.97539 6.77539 9.34476 6.77539 9.80039V14.2004C6.77539 14.656 7.14476 15.0254 7.60039 15.0254C8.05603 15.0254 8.42539 14.656 8.42539 14.2004V9.80039C8.42539 9.34476 8.05603 8.97539 7.60039 8.97539Z" fill="currentColor"/>
<path d="M15.5754 9.80039C15.5754 9.34476 15.9448 8.97539 16.4004 8.97539C16.856 8.97539 17.2254 9.34476 17.2254 9.80039V14.2004C17.2254 14.656 16.856 15.0254 16.4004 15.0254C15.9448 15.0254 15.5754 14.656 15.5754 14.2004V9.80039Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39938 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'chat-round-call',
    style: SolarIconStyle.broken,
    body: r'''<path d="M12 16V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14V10" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 14V10" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 3.33782C15.5291 2.48697 13.8214 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22C17.5228 22 22 17.5228 22 12C22 10.1786 21.513 8.47087 20.6622 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chat-round-call',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14V10" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 14V10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chat-round-call',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 16V8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8 14V10" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M16 14V10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chat-round-call',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 13.4811 3.09753 14.8788 3.7148 16.1181C3.96254 16.6155 4.05794 17.2103 3.90163 17.7945L3.30602 20.0205C3.19663 20.4293 3.57066 20.8034 3.97949 20.694L6.20553 20.0984C6.78973 19.9421 7.38451 20.0375 7.88191 20.2852C9.12121 20.9025 10.5189 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C10.2817 22.75 8.65552 22.3463 7.21315 21.6279C6.99791 21.5207 6.77814 21.4979 6.59324 21.5474L4.3672 22.143C2.84337 22.5507 1.44927 21.1566 1.857 19.6328L2.4526 17.4068C2.50208 17.2219 2.47933 17.0021 2.37213 16.7869C1.65371 15.3445 1.25 13.7183 1.25 12ZM12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V16C12.75 16.4142 12.4142 16.75 12 16.75C11.5858 16.75 11.25 16.4142 11.25 16V8C11.25 7.58579 11.5858 7.25 12 7.25ZM8 9.25C8.41421 9.25 8.75 9.58579 8.75 10V14C8.75 14.4142 8.41421 14.75 8 14.75C7.58579 14.75 7.25 14.4142 7.25 14V10C7.25 9.58579 7.58579 9.25 8 9.25ZM16 9.25C16.4142 9.25 16.75 9.58579 16.75 10V14C16.75 14.4142 16.4142 14.75 16 14.75C15.5858 14.75 15.25 14.4142 15.25 14V10C15.25 9.58579 15.5858 9.25 16 9.25Z" fill="currentColor"/>''',
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
