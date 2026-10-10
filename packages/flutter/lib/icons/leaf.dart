// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `leaf` icon.
class LeafIcon extends StatelessWidget {
  /// Creates the `leaf` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const LeafIcon({
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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'leaf',
    style: SolarIconStyle.bold,
    body: r'''<path d="M11.25 2.08258C11.0066 2.13684 10.7675 2.21782 10.5371 2.32554C6.55332 4.18758 4 9.39452 4 13.8567C4 18.0967 7.18341 21.5798 11.25 21.9647V2.08258Z" fill="currentColor"/>
<path d="M12.75 21.9647C16.8166 21.5798 20 18.0967 20 13.8567C20 13.4507 19.9789 13.0385 19.9374 12.6232L12.75 19.8106V21.9647Z" fill="currentColor"/>
<path d="M18.2597 7.17964C17.8707 6.45482 17.4222 5.76815 16.92 5.14068L12.75 9.31065V12.6893L18.2597 7.17964Z" fill="currentColor"/>
<path d="M15.9084 4.03088C15.1732 3.32565 14.3538 2.74195 13.4629 2.32554C13.2325 2.21782 12.9934 2.13684 12.75 2.08258V7.18933L15.9084 4.03088Z" fill="currentColor"/>
<path d="M18.9364 8.62421L12.75 14.8106V17.6893L19.5 10.9393L19.6319 10.8074C19.458 10.0697 19.2246 9.33633 18.9364 8.62421Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'leaf',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M12 22C7.58172 22 4 18.3539 4 13.8564C4.0001 9.39433 6.55344 4.18719 10.5371 2.3252C11.0014 2.10821 11.5008 2 12 2V22Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M12 2C12.4992 2 12.9986 2.10821 13.4629 2.3252C14.5712 2.84325 15.5689 3.62056 16.4316 4.56836C17.3062 5.52916 18.0422 6.66557 18.6143 7.88574C19.1839 9.10061 19.5906 10.399 19.8105 11.6895C19.935 12.4197 20 13.1474 20 13.8564C20 18.3539 16.4183 22 12 22V2Z" fill="currentColor"/>

<path opacity="0.5" d="M16.4316 4.56836C17.3062 5.52916 18.0422 6.66557 18.6143 7.88574C19.1839 9.10061 19.5906 10.399 19.8105 11.6895C19.935 12.4197 20 13.1474 20 13.8564C20 18.3539 16.4183 22 12 22V9L16.4316 4.56836Z" fill="currentColor"/>

<path opacity="0.5" d="M18.6143 7.88574C19.1839 9.10061 19.5906 10.399 19.8105 11.6895C19.935 12.4197 20 13.1474 20 13.8564C20 18.3539 16.4183 22 12 22V14.5L18.6143 7.88574Z" fill="currentColor"/>

<path opacity="0.5" d="M19.8105 11.6895C19.935 12.4197 20 13.1474 20 13.8564C20 18.3539 16.4183 22 12 22V19.5L19.8105 11.6895Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'leaf',
    style: SolarIconStyle.broken,
    body: r'''<path d="M12 8.99997L16.4317 4.56836M12 14.5L15 11.5M18.6142 7.88574L16.875 9.62497M12 19.5L13.875 17.625M19.811 11.689L15.75 15.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C16.4183 22 20 18.3541 20 13.8567C20 9.39453 17.4467 4.18759 13.4629 2.32555C12.9986 2.10852 12.4993 2 12 2M12 22C7.58172 22 4 18.3541 4 13.8567C4 12.2707 4.32258 10.5906 4.91731 9M12 22V2M12 2C11.5007 2 11.0014 2.10852 10.5371 2.32555C8.93605 3.07388 7.56606 4.36246 6.5 5.92583" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'leaf',
    style: SolarIconStyle.linear,
    body: r'''<path d="M12 9.00008L16.4317 4.56842M12 14.5001L18.6143 7.88582M12 19.5001L19.811 11.6891" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C16.4183 22 20 18.3541 20 13.8567C20 9.39453 17.4467 4.18759 13.4629 2.32555C12.9986 2.10852 12.4993 2 12 2M12 22C7.58172 22 4 18.3541 4 13.8567C4 9.39453 6.55332 4.18759 10.5371 2.32555C11.0014 2.10852 11.5007 2 12 2M12 22V2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'leaf',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M12 22C16.4183 22 20 18.3541 20 13.8567C20 9.39453 17.4467 4.18759 13.4629 2.32555C12.9986 2.10852 12.4993 2 12 2M12 22C7.58172 22 4 18.3541 4 13.8567C4 9.39453 6.55332 4.18759 10.5371 2.32555C11.0014 2.10852 11.5007 2 12 2M12 22V2" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M12 9.00008L16.4317 4.56842M12 14.5001L18.6143 7.88582M12 19.5001L19.811 11.6891" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'leaf',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.2195 1.64611C10.7841 1.38221 11.3919 1.25 12 1.25C12.6081 1.25 13.2159 1.38221 13.7805 1.64611C15.9556 2.66278 17.6944 4.56688 18.8844 6.75814C20.076 8.95209 20.75 11.4916 20.75 13.8567C20.75 18.7557 16.845 22.75 12 22.75C7.15501 22.75 3.25 18.7557 3.25 13.8567C3.25 11.4916 3.92403 8.95209 5.11556 6.75814C6.30562 4.56688 8.04437 2.66278 10.2195 1.64611ZM11.25 2.85638C11.1157 2.89525 10.9835 2.94478 10.8546 3.005C9.04602 3.85036 7.51624 5.48075 6.4337 7.47402C5.35263 9.46459 4.75 11.7596 4.75 13.8567C4.75 17.6927 7.60821 20.8285 11.25 21.2108V2.85638ZM12.75 2.85638V7.18934L15.378 4.56137C14.6988 3.91209 13.9496 3.38092 13.1454 3.005C13.0165 2.94478 12.8843 2.89525 12.75 2.85638ZM16.3862 5.67443L12.75 9.31066V12.6893L17.7044 7.73496C17.6593 7.64743 17.6132 7.56044 17.5663 7.47402C17.2175 6.83177 16.8223 6.2272 16.3862 5.67443ZM18.3577 9.20294L12.75 14.8107V17.6893L18.9696 11.4697L19.0175 11.5176C18.8669 10.7404 18.6451 9.96116 18.3577 9.20294ZM19.2373 13.3234L12.75 19.8107V21.2108C16.3918 20.8285 19.25 17.6927 19.25 13.8567C19.25 13.6802 19.2457 13.5024 19.2373 13.3234Z" fill="currentColor"/>''',
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
