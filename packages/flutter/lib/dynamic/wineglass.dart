// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wineglass` icon in every style.
///
/// Prefer the static widgets (e.g. `WineglassLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WineglassIcon extends StatelessWidget {
  /// Creates the `wineglass` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const WineglassIcon({
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
    name: 'wineglass',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5 4.89474C5 3.8483 5.8483 3 6.89474 3H17.1053C18.1517 3 19 3.8483 19 4.89474V8C19 8.08368 18.9985 8.16701 18.9956 8.24997C18.9032 8.25046 18.8094 8.26813 18.7185 8.30484L18.7148 8.30632L18.6981 8.31297C18.683 8.31899 18.6598 8.3281 18.6295 8.33989C18.5688 8.36346 18.4792 8.39769 18.3666 8.43924C18.1409 8.52248 17.8245 8.6344 17.4626 8.74874C16.722 8.98276 15.8541 9.20628 15.1885 9.24402C14.1043 9.3055 13.3288 8.88551 12.3672 8.3459L12.3243 8.32176C11.3911 7.79786 10.2738 7.17056 8.72697 7.25827C7.86456 7.30717 6.84781 7.58009 6.08585 7.82084C5.69641 7.94389 5.35704 8.06394 5.11471 8.15334C5.0747 8.16809 5.03728 8.18204 5.00266 8.19504C5.00089 8.13024 5 8.06523 5 8V4.89474Z" fill="currentColor"/>
<path d="M5.21268 9.7192C5.91966 12.519 8.31356 14.6475 11.25 14.9603V20.2499H8C7.58579 20.2499 7.25 20.5857 7.25 20.9999C7.25 21.4141 7.58579 21.7499 8 21.7499H16C16.4142 21.7499 16.75 21.4141 16.75 20.9999C16.75 20.5857 16.4142 20.2499 16 20.2499H12.75V14.9603C15.6229 14.6543 17.9765 12.6103 18.7391 9.90002C18.514 9.98118 18.2308 10.0791 17.9145 10.179C17.1526 10.4198 16.1358 10.6927 15.2734 10.7416C13.7266 10.8293 12.6093 10.202 11.6761 9.67812L11.6332 9.65399C10.6716 9.11438 9.89609 8.69439 8.81189 8.75586C8.1463 8.7936 7.27844 9.01712 6.53778 9.25115C6.17591 9.36548 5.85947 9.47741 5.63383 9.56064C5.52118 9.60219 5.43164 9.63642 5.3709 9.66C5.34055 9.67178 5.31743 9.68089 5.30225 9.68691L5.28556 9.69356L5.28186 9.69505C5.25896 9.7043 5.23588 9.71234 5.21268 9.7192Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'wineglass',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.75 20.25C16.1642 20.25 16.5 20.5858 16.5 21C16.5 21.4143 16.1642 21.75 15.75 21.75H8.25C7.83579 21.75 7.5 21.4143 7.5 21C7.5 20.5858 7.83579 20.25 8.25 20.25H15.75Z" fill="currentColor"/>
<path d="M8.76953 8.00687C9.93095 7.94103 10.8048 8.34187 11.6426 8.80082L12.3574 9.19926C13.1954 9.6583 14.0698 10.0591 15.2314 9.9932C16.5938 9.91583 18.5225 9.18643 18.9248 9.02933C18.4268 12.4071 15.5162 15 12 15C8.4645 14.9999 5.54122 12.3787 5.06738 8.97367C5.45112 8.82349 7.39778 8.08466 8.76953 8.00687Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M17.1055 3C18.1517 3.00011 18.9999 3.84826 19 4.89453V8C19 11.6163 16.2577 14.5906 12.7393 14.96C12.7428 14.9596 12.7465 14.9603 12.75 14.96V20.25H11.25V14.96C11.2532 14.9603 11.2566 14.9596 11.2598 14.96C7.74182 14.5901 5 11.6159 5 8V4.89453C5.00011 3.84826 5.84826 3.00011 6.89453 3H17.1055Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'wineglass',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 15.2856V20.9999M12 20.9999H15.75M12 20.9999H8.25M8 3H6.89474C5.8483 3 5 3.8483 5 4.89474V8C5 11.866 8.13401 15 12 15C15.866 15 19 11.866 19 8V4.89474C19 3.8483 18.1517 3 17.1053 3H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 9.0001C5.5 9.0001 7.58115 8.08736 9 8.0001C10.2326 7.92428 11.1163 8.46219 12 9.0001M18.5 9.0001C18.5 9.0001 16.4188 9.91283 15 10.0001" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'wineglass',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 15.2856V20.9999M12 20.9999H15.75M12 20.9999H8.25M5 4.89474C5 3.8483 5.8483 3 6.89474 3H17.1053C18.1517 3 19 3.8483 19 4.89474V8C19 11.866 15.866 15 12 15C8.13401 15 5 11.866 5 8V4.89474Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 9.0001C5.5 9.0001 7.58115 8.08736 9 8.0001C11.4652 7.84847 12.5348 10.1517 15 10.0001C16.4188 9.91283 18.5 9.0001 18.5 9.0001" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'wineglass',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15.75 20.9999H12H8.25M5 4.89474C5 3.8483 5.8483 3 6.89474 3H17.1053C18.1517 3 19 3.8483 19 4.89474V8C19 11.866 15.866 15 12 15C8.13401 15 5 11.866 5 8V4.89474Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 15.2856V20.9999" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.5 9.0001C5.5 9.0001 7.58115 8.08736 9 8.0001C11.4652 7.84847 12.5348 10.1517 15 10.0001C16.4188 9.91283 18.5 9.0001 18.5 9.0001" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'wineglass',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 4.89474C4.25 3.43409 5.43409 2.25 6.89474 2.25H17.1053C18.5659 2.25 19.75 3.43409 19.75 4.89474V8C19.75 12.0272 16.6783 15.3369 12.75 15.7142V20.2499H15.75C16.1642 20.2499 16.5 20.5857 16.5 20.9999C16.5 21.4141 16.1642 21.7499 15.75 21.7499H8.25C7.83579 21.7499 7.5 21.4141 7.5 20.9999C7.5 20.5857 7.83579 20.2499 8.25 20.2499H11.25V15.7142C7.3217 15.3369 4.25 12.0272 4.25 8V4.89474ZM6.89474 3.75C6.26252 3.75 5.75 4.26252 5.75 4.89474V8C5.75 8.02939 5.7502 8.05872 5.75061 8.08802C5.95277 8.00953 6.20043 7.91726 6.47478 7.82323C7.18313 7.58047 8.13813 7.30159 8.95396 7.25141C10.4226 7.16109 11.4822 7.80647 12.3428 8.33061C12.3586 8.34023 12.3743 8.34982 12.39 8.35935C13.2884 8.90623 13.9844 9.31105 14.954 9.25142C15.557 9.21433 16.352 8.99321 17.0389 8.75779C17.3731 8.64324 17.6655 8.53107 17.874 8.44765C17.9781 8.40601 18.0608 8.37174 18.1168 8.34817C18.1447 8.33639 18.166 8.3273 18.1799 8.32132L18.1951 8.31474L18.1984 8.3133C18.2131 8.30688 18.2283 8.30075 18.2431 8.29533C18.2477 8.19746 18.25 8.099 18.25 8V4.89474C18.25 4.26252 17.7375 3.75 17.1053 3.75H6.89474ZM17.9094 10.0404C17.0636 12.4903 14.7373 14.25 12 14.25C9.10817 14.25 6.67506 12.286 5.96176 9.6191C6.00788 9.60004 6.063 9.57754 6.12595 9.55236C6.33447 9.46893 6.62685 9.35676 6.96108 9.24222C7.64802 9.00679 8.44302 8.78567 9.04604 8.74859C10.0156 8.68895 10.7116 9.09377 11.61 9.64065C11.6257 9.65019 11.6414 9.65977 11.6572 9.66939C12.5178 10.1935 13.5774 10.8389 15.046 10.7486C15.8619 10.6984 16.8169 10.4195 17.5252 10.1768C17.6605 10.1304 17.7893 10.0845 17.9094 10.0404Z" fill="currentColor"/>''',
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
