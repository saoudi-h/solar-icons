// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mailbox` icon in every style.
///
/// Prefer the static widgets (e.g. `MailboxLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MailboxIcon extends StatelessWidget {
  /// Creates the `mailbox` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MailboxIcon({
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
    name: 'mailbox',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11 22.0001C11 22.4143 10.6642 22.7501 10.25 22.7501C9.83579 22.7501 9.5 22.4143 9.5 22.0001V20.0001H4.23242C2.99952 20 2.00007 18.834 2 17.3956V11.2501C2 8.35058 4.01472 6.00007 6.5 6.00007C8.98528 6.00007 11 8.35058 11 11.2501V22.0001ZM5 15.2501C4.58579 15.2501 4.25 15.5859 4.25 16.0001C4.25 16.4143 4.58579 16.7501 5 16.7501H8C8.41421 16.7501 8.75 16.4143 8.75 16.0001C8.75 15.5859 8.41421 15.2501 8 15.2501H5Z" fill="currentColor"/>
<path d="M15 22.0001C15 22.4143 14.6642 22.7501 14.25 22.7501C13.8358 22.7501 13.5 22.4143 13.5 22.0001V20.0001H12.5V11.2501C12.5 9.22022 11.6675 7.27611 10.2822 6.00007H14.5V10.2803C14.5 11.4515 15.4281 12.5001 16.6924 12.5001C17.9567 12.5 18.8848 11.4514 18.8848 10.2803V8.22761C19.6456 8.43298 20.4445 8.45733 21.2197 8.29499C21.7119 9.13675 22 10.1542 22 11.2501V17.4249C22 18.8469 21.0118 20.0001 19.793 20.0001H15V22.0001Z" fill="currentColor"/>
<path d="M17.3789 2.06843C18.049 1.93431 18.7421 1.99811 19.3789 2.253L19.4521 2.2823C19.8327 2.43465 20.2491 2.46354 20.6455 2.36433C21.3358 2.19162 21.9999 2.73503 22 3.47273V5.60359C21.9999 6.16314 21.631 6.65027 21.1074 6.78132L21.0459 6.79597C20.3269 6.97591 19.572 6.92472 18.8818 6.64851C18.4868 6.49033 18.0564 6.45005 17.6406 6.53327L17.3848 6.58503V10.2803C17.3848 10.6776 17.0747 11 16.6924 11.0001C16.31 11.0001 16 10.6776 16 10.2803V3.3282C16.0002 2.75721 16.3901 2.26646 16.9297 2.15827L17.3789 2.06843Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'mailbox',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11 22C11 22.4142 10.6642 22.75 10.25 22.75C9.83579 22.75 9.5 22.4142 9.5 22V20H11V22Z" fill="currentColor"/>
<path d="M17.5 6C19.9853 6 22 8.35051 22 11.25V17.4248C22 18.8468 21.0118 20 19.793 20H15V22C15 22.4142 14.6642 22.75 14.25 22.75C13.8358 22.75 13.5 22.4142 13.5 22V20H11V11.25C11 8.35051 8.98528 6 6.5 6H17.5Z" fill="currentColor"/>
<path d="M8 15.25C8.41421 15.25 8.75 15.5858 8.75 16C8.75 16.4142 8.41421 16.75 8 16.75H5C4.58579 16.75 4.25 16.4142 4.25 16C4.25 15.5858 4.58579 15.25 5 15.25H8Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M6.5 6.00007C8.98528 6.00007 11 8.35058 11 11.2501V20.0001H4.23242C2.99952 20 2.00007 18.834 2 17.3956V11.2501C2 8.35058 4.01472 6.00007 6.5 6.00007Z" fill="currentColor"/>
<path d="M17.3789 2.06843C18.049 1.93431 18.7421 1.99811 19.3789 2.253L19.4521 2.2823C19.8327 2.43465 20.2491 2.46354 20.6455 2.36433C21.3358 2.19162 21.9999 2.73503 22 3.47273V5.60359C21.9999 6.16314 21.631 6.65027 21.1074 6.78132L21.0459 6.79597C20.3269 6.97591 19.572 6.92472 18.8818 6.64851C18.4868 6.49033 18.0564 6.45005 17.6406 6.53327L17.3848 6.58503V10.2803C17.3848 10.6776 17.0747 11 16.6924 11.0001C16.31 11.0001 16 10.6776 16 10.2803V3.3282C16.0002 2.75721 16.3901 2.26646 16.9297 2.15827L17.3789 2.06843Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'mailbox',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10.5 22V20M14.5 22V20" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12V11.25C2 8.35051 4.01472 6 6.5 6C8.98528 6 11 8.35051 11 11.25V17V20H4.23256C2.99955 20 2 18.8339 2 17.3953V16M14 20H19.7931C21.0119 20 22 18.8473 22 17.4253V15M22 11.25C22 8.35051 19.9853 6 17.5 6M7 6H18M9 20H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 16H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 5.41121V2.63519C16 2.39905 16.1676 2.19612 16.3994 2.15144L16.8855 2.05779C17.4738 1.94443 18.0821 1.99855 18.6412 2.214L18.7203 2.24451C19.2746 2.4581 19.8807 2.498 20.4582 2.35891C20.7343 2.2924 21 2.50168 21 2.78573V5.00723C21 5.2442 20.8376 5.45031 20.6073 5.5058L20.5407 5.52184C19.9095 5.67387 19.247 5.63026 18.6412 5.39679C18.0821 5.18135 17.4738 5.12722 16.8855 5.24058L16 5.41121ZM16 5.41121V9.88432" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'mailbox',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M10.5 22V20M14.5 22V20" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 20H19.7931C21.0119 20 22 18.8473 22 17.4253V11.25C22 8.35051 19.9853 6 17.5 6M7 6H18M9 20H15M2 11.25C2 8.35051 4.01472 6 6.5 6C8.98528 6 11 8.35051 11 11.25V20H4.23256C2.99955 20 2 18.8339 2 17.3953V11.25Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 16H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 5.41121V2.63519C16 2.39905 16.1676 2.19612 16.3994 2.15144L16.8855 2.05779C17.4738 1.94443 18.0821 1.99855 18.6412 2.214L18.7203 2.24451C19.2746 2.4581 19.8807 2.498 20.4582 2.35891C20.7343 2.2924 21 2.50168 21 2.78573V5.00723C21 5.2442 20.8376 5.45031 20.6073 5.5058L20.5407 5.52184C19.9095 5.67387 19.247 5.63026 18.6412 5.39679C18.0821 5.18135 17.4738 5.12722 16.8855 5.24058L16 5.41121ZM16 5.41121V9.88432" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'mailbox',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14 20H19.7931C21.0119 20 22 18.8473 22 17.4253V11.25C22 8.35051 19.9853 6 17.5 6M7 6H18M9 20H15M2 11.25C2 8.35051 4.01472 6 6.5 6C8.98528 6 11 8.35051 11 11.25V20H4.23256C2.99955 20 2 18.8339 2 17.3953V11.25Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 16H8" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.5 22V20M14.5 22V20" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M16 5.41121V2.63519C16 2.39905 16.1676 2.19612 16.3994 2.15144L16.8855 2.05779C17.4738 1.94443 18.0821 1.99855 18.6412 2.214L18.7203 2.24451C19.2746 2.4581 19.8807 2.498 20.4582 2.35891C20.7343 2.2924 21 2.50168 21 2.78573V5.00723C21 5.2442 20.8376 5.45031 20.6073 5.5058L20.5407 5.52184C19.9095 5.67387 19.247 5.63026 18.6412 5.39679C18.0821 5.18135 17.4738 5.12722 16.8855 5.24058L16 5.41121ZM16 5.41121V9.88432" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'mailbox',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18.3715 3.02906C17.9435 2.86413 17.4778 2.82269 17.0274 2.90947L16.75 2.96292V4.61813C17.4742 4.47982 18.2228 4.54702 18.9109 4.8122C19.338 4.97679 19.8019 5.01813 20.25 4.93273V3.27443C19.6437 3.35379 19.025 3.28092 18.4506 3.05957L18.3715 3.02906ZM16.75 6.14572L17.0274 6.09227C17.4778 6.00549 17.9435 6.04692 18.3715 6.21186C19.1193 6.50005 19.9371 6.55389 20.7163 6.36623L20.7829 6.35019C21.3502 6.21354 21.75 5.706 21.75 5.12246V2.90097C21.75 2.13165 21.0305 1.56486 20.2825 1.745C19.8531 1.84845 19.4023 1.81877 18.99 1.65991L18.9109 1.6294C18.2207 1.36345 17.4698 1.29663 16.7436 1.43657L16.2575 1.53023C15.6726 1.64293 15.25 2.15479 15.25 2.75042V6.24956H7C6.95339 6.24956 6.90777 6.25381 6.86352 6.26195C6.74341 6.25373 6.62219 6.24956 6.5 6.24956C3.6005 6.24956 1.25 8.60006 1.25 11.4996V16.767C1.25 18.4142 2.58534 19.7496 4.23256 19.7496H9.75V21.9996C9.75 22.4138 10.0858 22.7496 10.5 22.7496C10.9142 22.7496 11.25 22.4138 11.25 21.9996V19.7496H13.75V21.9996C13.75 22.4138 14.0858 22.7496 14.5 22.7496C14.9142 22.7496 15.25 22.4138 15.25 21.9996V19.7496H19.7931C21.4261 19.7496 22.75 18.4257 22.75 16.7927V11.4996C22.75 8.60006 20.3995 6.24956 17.5 6.24956H16.75V6.14572ZM15.25 7.74956V10.9996C15.25 11.4138 15.5858 11.7496 16 11.7496C16.4142 11.7496 16.75 11.4138 16.75 10.9996V7.74956H17.5C19.5711 7.74956 21.25 9.42849 21.25 11.4996V16.7927C21.25 17.5973 20.5977 18.2496 19.7931 18.2496H11.75V11.4996C11.75 10.0305 11.1466 8.70245 10.1742 7.74956H15.25ZM10.25 18.2496V11.4996C10.25 9.42849 8.57107 7.74956 6.5 7.74956C4.42893 7.74956 2.75 9.42849 2.75 11.4996V16.767C2.75 17.5858 3.41376 18.2496 4.23256 18.2496H10.25ZM4.25 15.9996C4.25 15.5853 4.58579 15.2496 5 15.2496H8C8.41421 15.2496 8.75 15.5853 8.75 15.9996C8.75 16.4138 8.41421 16.7496 8 16.7496H5C4.58579 16.7496 4.25 16.4138 4.25 15.9996Z" fill="currentColor"/>''',
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
