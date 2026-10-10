// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-off` icon in every style.
///
/// Prefer the static widgets (e.g. `ChatRoundOffLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChatRoundOffIcon extends StatelessWidget {
  /// Creates the `chat-round-off` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ChatRoundOffIcon({
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
    name: 'chat-round-off',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M1.46967 1.46967C1.76256 1.17678 2.23732 1.17678 2.53022 1.46967L22.5302 21.4697C22.8229 21.7626 22.8231 22.2374 22.5302 22.5302C22.2374 22.8231 21.7626 22.8229 21.4697 22.5302L18.5195 19.58C16.7686 21.0874 14.4915 22.0009 11.9999 22.0009C10.4004 22.0009 8.88854 21.6247 7.54779 20.957C7.19157 20.7795 6.78381 20.7204 6.39936 20.8232L4.17377 21.4189C3.20745 21.6774 2.32248 20.7934 2.581 19.8271L3.1767 17.6015C3.27956 17.2171 3.22125 16.8093 3.04389 16.4531C2.37609 15.1123 2 13.6005 1.99994 12.0009C1.99994 9.50925 2.91241 7.23134 4.41986 5.48041L1.46967 2.53022C1.17678 2.23732 1.17678 1.76256 1.46967 1.46967Z" fill="currentColor"/>
<path d="M11.9999 1.99994C17.5227 2.00004 21.9999 6.47715 21.9999 11.9999C21.9999 13.8785 21.4819 15.6361 20.581 17.1376L6.86225 3.41889C8.36377 2.51798 10.1214 1.99994 11.9999 1.99994Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chat-round-off',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M1.46967 1.46967C1.76256 1.17678 2.23732 1.17678 2.53022 1.46967L22.5302 21.4697C22.823 21.7626 22.8231 22.2374 22.5302 22.5302C22.2374 22.8231 21.7626 22.823 21.4697 22.5302L18.5195 19.58C16.7686 21.0874 14.4915 22.0009 11.9999 22.0009C10.4004 22.0009 8.88855 21.6247 7.54779 20.957C7.19156 20.7795 6.78382 20.7204 6.39936 20.8232L4.17377 21.4189C3.20744 21.6774 2.32245 20.7934 2.581 19.8271L3.1767 17.6015C3.27957 17.217 3.22128 16.8093 3.04389 16.4531C2.37608 15.1123 1.99999 13.6005 1.99994 12.0009C1.99994 9.50925 2.91241 7.23134 4.41986 5.48041L1.46967 2.53022C1.17678 2.23732 1.17678 1.76256 1.46967 1.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C10.1213 2 8.36362 2.51807 6.862 3.41914L20.5809 17.138C21.4819 15.6364 22 13.8787 22 12C22 6.47715 17.5228 2 12 2Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'chat-round-off',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.6622 7C21.513 8.47087 22 10.1786 22 12C22 13.8777 21.4825 15.6346 20.5822 17.1357" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 3.33782C15.5291 2.48697 13.8214 2 12 2C10.1223 2 8.36541 2.51754 6.86429 3.41776" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.92915 4.92969C3.1195 6.73933 2.00021 9.23933 2.00021 12.0008C2.00021 13.6004 2.37583 15.1124 3.04367 16.4532C3.22115 16.8095 3.28022 17.2168 3.17733 17.6014L2.58172 19.8274C2.32317 20.7937 3.20723 21.6778 4.17356 21.4192L6.3996 20.8236C6.78415 20.7207 7.19142 20.7798 7.54774 20.9573C8.88858 21.6251 10.4005 22.0008 12.0002 22.0008C14.7616 22.0008 17.2616 20.8815 19.0713 19.0718" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 2C2.97631 2.97631 3.95262 3.95262 4.92893 4.92893C5.21199 5.21199 5.49505 5.49505 5.77811 5.77811C7.06458 7.06458 8.35106 8.35106 9.63753 9.63753C12.782 12.782 15.9266 15.9266 19.0711 19.0711C20.0474 20.0474 21.0237 21.0237 22 22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chat-round-off',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4.92915 4.92969C3.1195 6.73933 2.00021 9.23933 2.00021 12.0008C2.00021 13.6004 2.37583 15.1124 3.04367 16.4532C3.22115 16.8095 3.28022 17.2168 3.17733 17.6014L2.58172 19.8274C2.32317 20.7937 3.20723 21.6778 4.17356 21.4192L6.3996 20.8236C6.78415 20.7207 7.19142 20.7798 7.54774 20.9573C8.88858 21.6251 10.4005 22.0008 12.0002 22.0008C14.7616 22.0008 17.2616 20.8815 19.0713 19.0718" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.862 3.41914C8.36362 2.51807 10.1213 2 12 2C17.5228 2 22 6.47715 22 12C22 13.8787 21.4819 15.6364 20.5809 17.138" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 2C2.97631 2.97631 3.95262 3.95262 4.92893 4.92893C5.21199 5.21199 5.49505 5.49505 5.77811 5.77811C7.06458 7.06458 8.35106 8.35106 9.63753 9.63753C12.782 12.782 15.9266 15.9266 19.0711 19.0711C20.0474 20.0474 21.0237 21.0237 22 22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chat-round-off',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4.92915 4.92969C3.1195 6.73933 2.00021 9.23933 2.00021 12.0008C2.00021 13.6004 2.37583 15.1124 3.04367 16.4532C3.22115 16.8095 3.28022 17.2168 3.17733 17.6014L2.58172 19.8274C2.32317 20.7937 3.20723 21.6778 4.17356 21.4192L6.3996 20.8236C6.78415 20.7207 7.19142 20.7798 7.54774 20.9573C8.88858 21.6251 10.4005 22.0008 12.0002 22.0008C14.7616 22.0008 17.2616 20.8815 19.0713 19.0718" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 2C2.97631 2.97631 3.95262 3.95262 4.92893 4.92893C5.21199 5.21199 5.49505 5.49505 5.77811 5.77811C7.06458 7.06458 8.35106 8.35106 9.63753 9.63753C12.782 12.782 15.9266 15.9266 19.0711 19.0711C20.0474 20.0474 21.0237 21.0237 22 22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.862 3.41914C8.36362 2.51807 10.1213 2 12 2C17.5228 2 22 6.47715 22 12C22 13.8787 21.4819 15.6364 20.5809 17.138" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chat-round-off',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.46973 1.46973C1.76262 1.17683 2.23738 1.17683 2.53027 1.46973L22.5303 21.4697C22.8231 21.7626 22.8231 22.2374 22.5303 22.5303C22.2374 22.8231 21.7626 22.8231 21.4697 22.5303L19.0508 20.1113C17.1635 21.7531 14.6984 22.751 12 22.751C10.2818 22.7509 8.6552 22.3473 7.21289 21.6289C6.99787 21.5219 6.77849 21.4985 6.59375 21.5479L4.36719 22.1436C2.8435 22.5511 1.44991 21.1575 1.85742 19.6338L2.45312 17.4072C2.50245 17.2225 2.47907 17.0031 2.37207 16.7881C1.65369 15.3458 1.25004 13.7192 1.25 12.001C1.25 9.30256 2.24684 6.83651 3.88867 4.94922L1.46973 2.53027C1.17683 2.23738 1.17683 1.76262 1.46973 1.46973ZM4.95215 6.0127C3.5792 7.62693 2.75 9.71638 2.75 12.001C2.75004 13.4819 3.09761 14.8799 3.71484 16.1191C3.96249 16.6165 4.0576 17.2109 3.90137 17.7949L3.30664 20.0215C3.1974 20.4302 3.57076 20.8036 3.97949 20.6943L6.20605 20.0996C6.79014 19.9434 7.38451 20.0385 7.88184 20.2861C9.12107 20.9034 10.519 21.2509 12 21.251C14.2846 21.251 16.3731 20.4208 17.9873 19.0479L4.95215 6.0127Z" fill="currentColor"/>
<path d="M12 1.25C17.937 1.25012 22.75 6.06301 22.75 12C22.75 14.0183 22.1926 15.9086 21.2236 17.5234C21.0106 17.8785 20.5504 17.994 20.1953 17.7812C19.8401 17.5681 19.7244 17.1071 19.9375 16.752C20.7705 15.3637 21.25 13.739 21.25 12C21.25 6.89144 17.1085 2.75012 12 2.75C10.2611 2.75 8.63632 3.22949 7.24805 4.0625C6.89291 4.2756 6.4319 4.15978 6.21875 3.80469C6.00588 3.44956 6.12149 2.98943 6.47656 2.77637C8.09141 1.80744 9.98176 1.25 12 1.25Z" fill="currentColor"/>''',
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
