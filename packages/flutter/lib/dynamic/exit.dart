// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `exit` icon in every style.
///
/// Prefer the static widgets (e.g. `ExitLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ExitIcon extends StatelessWidget {
  /// Creates the `exit` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ExitIcon({
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
    name: 'exit',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.70703 2.40924C10.4142 1.78228 11.4954 1.97065 13.6572 2.34772L15.9863 2.75397C18.3806 3.17157 19.5781 3.37984 20.2891 4.25788C21 5.13614 21 6.40693 21 8.94733V15.0528C21 17.5932 21 18.864 20.2891 19.7423C19.5781 20.6203 18.3806 20.8286 15.9863 21.2462L13.6572 21.6524C11.4954 22.0295 10.4142 22.2178 9.70703 21.5909C9.00014 20.9638 9 19.8169 9 17.5235V6.47663C9 4.18321 9.00014 3.0363 9.70703 2.40924ZM12 10.169C11.5859 10.169 11.2502 10.5199 11.25 10.9532V13.0469C11.2502 13.4802 11.5859 13.8311 12 13.8311C12.4141 13.8311 12.7498 13.4802 12.75 13.0469V10.9532C12.7498 10.5199 12.4141 10.169 12 10.169Z" fill="currentColor"/>
<path d="M7.54688 4.50006C7.49956 5.12336 7.49992 5.84431 7.5 6.62311V17.377C7.49992 18.1558 7.49955 18.8768 7.54688 19.5001C5.4889 19.4971 4.41615 19.4513 3.73242 18.7676C3.00021 18.0354 3 16.8569 3 14.5001V9.50006C3 7.14316 3.0003 5.96473 3.73242 5.23249C4.41615 4.54876 5.48879 4.50306 7.54688 4.50006Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'exit',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.70725 2.4087C9 3.03569 9 4.18259 9 6.4764V17.5236C9 19.8174 9 20.9643 9.70725 21.5913C10.4145 22.2183 11.4955 22.0297 13.6576 21.6526L15.9864 21.2465C18.3809 20.8288 19.5781 20.62 20.2891 19.7417C21 18.8635 21 17.5933 21 15.0529V8.94711C21 6.40671 21 5.13652 20.2891 4.25826C19.5781 3.37999 18.3809 3.17118 15.9864 2.75354L13.6576 2.34736C11.4955 1.97026 10.4145 1.78171 9.70725 2.4087ZM12.75 10.9535C12.75 10.52 12.4142 10.1686 12 10.1686C11.5858 10.1686 11.25 10.52 11.25 10.9535V13.0465C11.25 13.48 11.5858 13.8314 12 13.8314C12.4142 13.8314 12.75 13.48 12.75 13.0465V10.9535Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.052 4.5C9 5.07763 9 5.80355 9 6.72183V17.2781C9 18.1964 9 18.9224 9.05201 19.5H8C5.64298 19.5 4.46447 19.5 3.73223 18.7678C3 18.0355 3 16.857 3 14.5V9.5C3 7.14298 3 5.96447 3.73223 5.23223C4.46447 4.5 5.64298 4.5 8 4.5H9.052Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'exit',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.02831 4.5H8C5.64298 4.5 4.46447 4.5 3.73223 5.23223C3 5.96447 3 7.14298 3 9.5V10M9.02831 19.5H8C5.64298 19.5 4.46447 19.5 3.73223 18.7678C3 18.0355 3 16.857 3 14.5V14" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.6576 2.34736C11.4955 1.97026 10.4145 1.78171 9.70725 2.4087C9 3.03569 9 4.18259 9 6.4764V17.5236C9 19.8174 9 20.9643 9.70725 21.5913C10.4145 22.2183 11.4955 22.0297 13.6576 21.6526L15.9864 21.2465C18.3809 20.8288 19.5781 20.62 20.2891 19.7417C21 18.8635 21 17.5933 21 15.0529V8.94711C21 6.40672 21 5.13652 20.2891 4.25826C19.814 3.67133 19.1217 3.38338 18 3.13228" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 11V13" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'exit',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.02831 4.5H8C5.64298 4.5 4.46447 4.5 3.73223 5.23223C3 5.96447 3 7.14298 3 9.5V14.5C3 16.857 3 18.0355 3.73223 18.7678C4.46447 19.5 5.64298 19.5 8 19.5H9.02831" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 6.4764C9 4.18259 9 3.03569 9.70725 2.4087C10.4145 1.78171 11.4955 1.97026 13.6576 2.34736L15.9864 2.75354C18.3809 3.17118 19.5781 3.37999 20.2891 4.25826C21 5.13652 21 6.40672 21 8.94711V15.0529C21 17.5933 21 18.8635 20.2891 19.7417C19.5781 20.62 18.3809 20.8288 15.9864 21.2465L13.6576 21.6526C11.4955 22.0297 10.4145 22.2183 9.70725 21.5913C9 20.9643 9 19.8174 9 17.5236V6.4764Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 11V13" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'exit',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 6.4764C9 4.18259 9 3.03569 9.70725 2.4087C10.4145 1.78171 11.4955 1.97026 13.6576 2.34736L15.9864 2.75354C18.3809 3.17118 19.5781 3.37999 20.2891 4.25826C21 5.13652 21 6.40672 21 8.94711V15.0529C21 17.5933 21 18.8635 20.2891 19.7417C19.5781 20.62 18.3809 20.8288 15.9864 21.2465L13.6576 21.6526C11.4955 22.0297 10.4145 22.2183 9.70725 21.5913C9 20.9643 9 19.8174 9 17.5236V6.4764Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.02831 4.5H8C5.64298 4.5 4.46447 4.5 3.73223 5.23223C3 5.96447 3 7.14298 3 9.5V14.5C3 16.857 3 18.0355 3.73223 18.7678C4.46447 19.5 5.64298 19.5 8 19.5H9.02831" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 11V13" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'exit',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.75 11C12.75 10.5858 12.4142 10.25 12 10.25C11.5858 10.25 11.25 10.5858 11.25 11V13C11.25 13.4142 11.5858 13.75 12 13.75C12.4142 13.75 12.75 13.4142 12.75 13V11Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.7247 2.02709L16.1585 2.43272C17.3143 2.62533 18.2506 2.78137 18.9831 2.99943C19.7459 3.22653 20.3761 3.54467 20.8613 4.11746C21.3465 4.69024 21.5568 5.36421 21.6554 6.15397C21.75 6.91231 21.75 7.86155 21.75 9.03325V14.9667C21.75 16.1384 21.75 17.0877 21.6554 17.846C21.5568 18.6358 21.3465 19.3097 20.8613 19.8825C20.3761 20.4553 19.7459 20.7734 18.9831 21.0005C18.2506 21.2186 17.3143 21.3746 16.1586 21.5672L13.7247 21.9729C12.6915 22.1451 11.8373 22.2875 11.155 22.304C10.4394 22.3213 9.77599 22.2063 9.22247 21.7374C8.75523 21.3416 8.52385 20.827 8.40256 20.25H7.94632C6.8135 20.25 5.88774 20.25 5.15689 20.1518C4.39294 20.0491 3.7306 19.8268 3.20191 19.2981C2.67321 18.7694 2.45093 18.1071 2.34822 17.3431C2.24996 16.6123 2.24998 15.6865 2.25 14.5537V9.4463C2.24998 8.31348 2.24996 7.38773 2.34822 6.65688C2.45093 5.89293 2.67321 5.23059 3.20191 4.7019C3.7306 4.1732 4.39294 3.95092 5.15689 3.84821C5.88775 3.74995 6.81348 3.74997 7.94631 3.74999L8.40256 3.74999C8.52384 3.17295 8.75523 2.65841 9.22247 2.2626C9.77599 1.7937 10.4394 1.67869 11.155 1.69597C11.8373 1.71246 12.6916 1.85487 13.7247 2.02709ZM8.25 17.3351C8.24999 17.8511 8.24997 18.3231 8.26143 18.75H8C6.80029 18.75 5.97595 18.7484 5.35676 18.6652C4.75914 18.5848 4.46611 18.441 4.26257 18.2374C4.05903 18.0339 3.91519 17.7409 3.83484 17.1432C3.7516 16.524 3.75 15.6997 3.75 14.5V9.49999C3.75 8.30028 3.7516 7.47594 3.83484 6.85675C3.91519 6.25913 4.05903 5.9661 4.26257 5.76256C4.46611 5.55902 4.75914 5.41518 5.35676 5.33483C5.97595 5.25159 6.80029 5.24999 8 5.24999H8.26143C8.24997 5.6769 8.24999 6.14889 8.25 6.6649V17.3351ZM11.1188 3.19554C10.5765 3.18243 10.3458 3.2769 10.192 3.40713C10.0383 3.53736 9.90719 3.7494 9.83097 4.28646C9.75179 4.84427 9.75 5.60296 9.75 6.72183V17.2781C9.75 18.397 9.75179 19.1557 9.83097 19.7135C9.90719 20.2506 10.0383 20.4626 10.192 20.5928C10.3458 20.7231 10.5765 20.8175 11.1188 20.8044C11.682 20.7908 12.4307 20.6679 13.5343 20.4839L15.8631 20.0958C17.0793 19.8931 17.9228 19.7511 18.5551 19.5629C19.1672 19.3806 19.4911 19.1794 19.7168 18.9129C19.9425 18.6465 20.0878 18.294 20.1669 17.6602C20.2486 17.0056 20.25 16.1502 20.25 14.9172V9.08275C20.25 7.84973 20.2486 6.99439 20.1669 6.33981C20.0878 5.706 19.9425 5.35347 19.7168 5.08702C19.4911 4.82057 19.1672 4.61933 18.5551 4.43707C17.9228 4.24885 17.0793 4.10688 15.8631 3.90418L13.5343 3.51604C12.4307 3.33211 11.682 3.20914 11.1188 3.19554Z" fill="currentColor"/>''',
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
