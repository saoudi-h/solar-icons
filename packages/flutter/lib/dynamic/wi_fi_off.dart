// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-off` icon in every style.
///
/// Prefer the static widgets (e.g. `WiFiOffLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WiFiOffIcon extends StatelessWidget {
  /// Creates the `wi-fi-off` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const WiFiOffIcon({
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
    name: 'wi-fi-off',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.4697 1.46967C21.7626 1.17678 22.2373 1.17678 22.5302 1.46967C22.8231 1.76257 22.8231 2.23734 22.5302 2.53022L2.53022 22.5302C2.23734 22.8231 1.76257 22.8231 1.46967 22.5302C1.17678 22.2373 1.17678 21.7626 1.46967 21.4697L12.83 10.1083C10.3568 9.85159 7.7931 10.7427 5.88276 12.8046C5.60122 13.1082 5.12695 13.1261 4.82319 12.8447C4.51971 12.5632 4.50186 12.0888 4.78315 11.7851C7.30938 9.05856 10.8534 8.05609 14.1318 8.80658L16.9413 5.99701C12.1416 3.93507 6.45259 4.9944 2.54975 9.20697C2.26836 9.51046 1.79397 9.52898 1.49018 9.24799C1.18636 8.96651 1.16873 8.4913 1.45014 8.18744C5.93242 3.34969 12.5856 2.23007 18.0742 4.8642L21.4697 1.46967Z" fill="currentColor"/>
<path d="M12.0175 18.7148C12.4317 18.7148 12.7675 19.0506 12.7675 19.4648C12.7673 19.8788 12.4316 20.2148 12.0175 20.2148C11.6035 20.2148 11.2678 19.8788 11.2675 19.4648C11.2675 19.0506 11.6033 18.7148 12.0175 18.7148Z" fill="currentColor"/>
<path d="M12.2265 14.3447C12.3169 13.9408 12.718 13.6854 13.122 13.7753C14.1419 14.0028 15.1059 14.5433 15.8837 15.3828C16.1651 15.6865 16.1471 16.1608 15.8437 16.4423C15.54 16.7237 15.0657 16.7058 14.7841 16.4023C14.2115 15.7843 13.5162 15.4009 12.7958 15.2402C12.3917 15.15 12.1365 14.7488 12.2265 14.3447Z" fill="currentColor"/>
<path d="M16.1288 10.3037C16.3504 9.95406 16.8141 9.84994 17.164 10.0712C17.8993 10.5364 18.5899 11.1085 19.2167 11.7851C19.498 12.0888 19.4801 12.5632 19.1767 12.8447C18.873 13.1261 18.3987 13.1081 18.1171 12.8046C17.5775 12.2222 16.9857 11.7338 16.3613 11.3388C16.0115 11.1173 15.9075 10.6536 16.1288 10.3037Z" fill="currentColor"/>
<path d="M19.7333 6.68158C19.9897 6.35649 20.4608 6.30044 20.7861 6.55658C21.404 7.04316 21.9945 7.58707 22.5507 8.18744C22.8319 8.49118 22.8141 8.96555 22.5107 9.24701C22.2069 9.52851 21.7317 9.5098 21.4501 9.206C20.9468 8.66271 20.4142 8.17198 19.8583 7.73432C19.533 7.47805 19.4771 7.00698 19.7333 6.68158Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'wi-fi-off',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.4697 1.46967C21.7626 1.17678 22.2373 1.17678 22.5302 1.46967C22.8231 1.76257 22.8231 2.23734 22.5302 2.53022L2.53022 22.5302C2.23734 22.8231 1.76257 22.8231 1.46967 22.5302C1.17678 22.2373 1.17678 21.7626 1.46967 21.4697L21.4697 1.46967Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12.0174 18.7142C12.4315 18.7142 12.7673 19.0501 12.7674 19.4642C12.7674 19.8784 12.4316 20.2142 12.0174 20.2142C11.6032 20.2142 11.2674 19.8784 11.2674 19.4642C11.2675 19.0501 11.6033 18.7142 12.0174 18.7142Z" fill="currentColor"/>
<path d="M12.2264 14.3451C12.3166 13.9411 12.7179 13.6861 13.1219 13.7757C14.1417 14.0032 15.1058 14.5437 15.8836 15.3831C16.1651 15.6869 16.1473 16.1612 15.8436 16.4427C15.5398 16.724 15.0655 16.7061 14.784 16.4027C14.2114 15.7847 13.516 15.4013 12.7957 15.2406C12.3918 15.1502 12.1364 14.7491 12.2264 14.3451Z" fill="currentColor"/>
<path d="M4.78303 11.7855C7.42056 8.93884 11.1676 7.97041 14.5633 8.91538L14.161 10.3607C11.3071 9.56658 8.13916 10.3694 5.88264 12.805C5.60121 13.1086 5.12688 13.1262 4.82307 12.8451C4.51947 12.5635 4.50161 12.0893 4.78303 11.7855Z" fill="currentColor"/>
<path d="M16.1278 10.304C16.3493 9.95426 16.813 9.85028 17.1629 10.0716C17.8983 10.5368 18.5887 11.1088 19.2156 11.7855C19.4971 12.0893 19.4793 12.5635 19.1756 12.8451C18.8718 13.1264 18.3975 13.1086 18.116 12.805C17.5763 12.2225 16.9847 11.7342 16.3602 11.3392C16.0104 11.1177 15.9065 10.654 16.1278 10.304Z" fill="currentColor"/>
<path d="M1.45002 8.18686C6.0687 3.20203 12.9928 2.16489 18.5721 5.11459L17.8709 6.44077C12.8936 3.80932 6.70766 4.71852 2.54963 9.20639C2.26818 9.51005 1.79388 9.52866 1.49006 9.24741C1.18621 8.9659 1.16851 8.49071 1.45002 8.18686Z" fill="currentColor"/>
<path d="M19.7323 6.68198C19.9885 6.35665 20.4596 6.30077 20.785 6.55698C21.4029 7.04351 21.9935 7.58754 22.5496 8.18784C22.8306 8.49167 22.8132 8.96605 22.5096 9.24741C22.2058 9.52882 21.7306 9.50994 21.449 9.20639C20.9457 8.66318 20.413 8.17232 19.8573 7.73471C19.5319 7.47846 19.4761 7.00737 19.7323 6.68198Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'wi-fi-off',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.9587 14.5083C13.829 14.7024 14.6583 15.164 15.3336 15.8929" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.762 10.7051C17.442 11.1352 18.0829 11.6651 18.6663 12.2949" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.697C2.78923 7.84513 3.64855 7.11499 4.5579 6.50659" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.53662 4.68851C11.7523 3.81543 15.1968 4.17863 18.222 5.77811" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.3215 7.14551C20.9086 7.60771 21.47 8.12479 21.9999 8.69674" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 2C20.7406 3.25937 19.4813 4.51874 18.2219 5.77811C16.9354 7.06458 15.6489 8.35106 14.3625 9.63753C10.2416 13.7584 6.12082 17.8792 2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.39361 10.0709 10.1707 9.09151 12.8624 9.35689" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'wi-fi-off',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.959 14.5085C13.8293 14.7027 14.6585 15.1642 15.3339 15.8931" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.78006 9.65377 11.2376 8.76794 14.3625 9.63754" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.7622 10.7053C17.4423 11.1355 18.0831 11.6654 18.6665 12.2951" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.69694C6.38843 3.96024 12.9434 2.98729 18.2219 5.77811" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.3218 7.14575C20.9088 7.60795 21.4703 8.12503 22.0002 8.69699" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'wi-fi-off',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 2C20.7406 3.25937 19.4813 4.51874 18.2219 5.77811C16.9354 7.06458 15.6489 8.35106 14.3625 9.63753C10.2416 13.7584 6.12082 17.8792 2 22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.959 14.5083C13.8293 14.7024 14.6585 15.164 15.3339 15.8929" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.33301 12.295C7.78006 9.65377 11.2376 8.76794 14.3625 9.63754" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M16.7617 10.7051C17.4418 11.1352 18.0826 11.6651 18.666 12.2949" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 8.69694C6.38843 3.96024 12.9434 2.98729 18.2219 5.77811" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20.3213 7.14551C20.9083 7.60771 21.4698 8.12479 21.9997 8.69674" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'wi-fi-off',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M21.4697 1.46967C21.7626 1.17678 22.2373 1.17678 22.5302 1.46967C22.8231 1.76257 22.8231 2.23734 22.5302 2.53022L2.53022 22.5302C2.23734 22.8231 1.76257 22.8231 1.46967 22.5302C1.17678 22.2373 1.17678 21.7626 1.46967 21.4697L12.83 10.1083C10.3568 9.85159 7.7931 10.7427 5.88276 12.8046C5.60122 13.1082 5.12695 13.1261 4.82319 12.8447C4.51971 12.5632 4.50186 12.0888 4.78315 11.7851C7.30938 9.05856 10.8534 8.05609 14.1318 8.80658L16.9413 5.99701C12.1417 3.93507 6.45261 4.99364 2.54975 9.206C2.26829 9.50966 1.794 9.52829 1.49018 9.24701C1.18642 8.96549 1.16866 8.49028 1.45014 8.18647C5.93244 3.34893 12.5857 2.23006 18.0742 4.8642L21.4697 1.46967Z" fill="currentColor"/>
<path d="M12.0175 18.7148C12.4317 18.7148 12.7675 19.0506 12.7675 19.4648C12.7673 19.8788 12.4316 20.2148 12.0175 20.2148C11.6035 20.2148 11.2678 19.8788 11.2675 19.4648C11.2675 19.0506 11.6033 18.7148 12.0175 18.7148Z" fill="currentColor"/>
<path d="M12.2265 14.3447C12.3169 13.9408 12.718 13.6854 13.122 13.7753C14.1419 14.0028 15.1059 14.5433 15.8837 15.3828C16.1651 15.6865 16.1471 16.1608 15.8437 16.4423C15.54 16.7237 15.0657 16.7058 14.7841 16.4023C14.2115 15.7843 13.5162 15.4009 12.7958 15.2402C12.3917 15.15 12.1365 14.7488 12.2265 14.3447Z" fill="currentColor"/>
<path d="M16.1288 10.3037C16.3504 9.95406 16.8141 9.84994 17.164 10.0712C17.8993 10.5364 18.5899 11.1085 19.2167 11.7851C19.498 12.0888 19.4801 12.5632 19.1767 12.8447C18.873 13.1261 18.3987 13.1081 18.1171 12.8046C17.5775 12.2222 16.9857 11.7338 16.3613 11.3388C16.0115 11.1173 15.9075 10.6536 16.1288 10.3037Z" fill="currentColor"/>
<path d="M19.7333 6.68158C19.9896 6.35636 20.4607 6.3004 20.7861 6.55658C21.404 7.04314 21.9945 7.58711 22.5507 8.18744C22.8318 8.49123 22.8142 8.9656 22.5107 9.24701C22.2069 9.52847 21.7317 9.50967 21.4501 9.206C20.9468 8.66275 20.4141 8.17195 19.8583 7.73432C19.533 7.47805 19.4771 7.00698 19.7333 6.68158Z" fill="currentColor"/>''',
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
