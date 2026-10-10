// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `refresh-circle` icon.
class RefreshCircleIcon extends StatelessWidget {
  /// Creates the `refresh-circle` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RefreshCircleIcon({
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
    name: 'refresh-circle',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM5.46056 11.0833C5.83331 7.79988 8.62404 5.25 12.0096 5.25C14.148 5.25 16.0489 6.26793 17.2521 7.84246C17.5036 8.17158 17.4406 8.64227 17.1115 8.89376C16.7824 9.14526 16.3117 9.08233 16.0602 8.7532C15.1289 7.53445 13.6613 6.75 12.0096 6.75C9.45213 6.75 7.33639 8.63219 6.9733 11.0833H7.33652C7.63996 11.0833 7.9135 11.2662 8.02953 11.5466C8.14556 11.8269 8.0812 12.1496 7.86649 12.364L6.69823 13.5307C6.40542 13.8231 5.9311 13.8231 5.63829 13.5307L4.47003 12.364C4.25532 12.1496 4.19097 11.8269 4.30699 11.5466C4.42302 11.2662 4.69656 11.0833 5 11.0833H5.46056ZM18.3617 10.4693C18.0689 10.1769 17.5946 10.1769 17.3018 10.4693L16.1335 11.636C15.9188 11.8504 15.8545 12.1731 15.9705 12.4534C16.0865 12.7338 16.3601 12.9167 16.6635 12.9167H17.0267C16.6636 15.3678 14.5479 17.25 11.9905 17.25C10.3464 17.25 8.88484 16.4729 7.9529 15.2638C7.70002 14.9358 7.22908 14.8748 6.90101 15.1277C6.57295 15.3806 6.512 15.8515 6.76487 16.1796C7.96886 17.7416 9.86205 18.75 11.9905 18.75C15.376 18.75 18.1667 16.2001 18.5395 12.9167H19C19.3035 12.9167 19.577 12.7338 19.693 12.4534C19.8091 12.1731 19.7447 11.8504 19.53 11.636L18.3617 10.4693Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'refresh-circle',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M16.6483 10.6963C16.8521 10.7044 17.0441 10.7948 17.1796 10.9473L18.5605 12.502C18.8356 12.8116 18.8076 13.2854 18.498 13.5605C18.1883 13.8356 17.7145 13.8077 17.4394 13.498L17.2821 13.3213C16.8283 15.8445 14.6014 17.751 11.9345 17.751C10.3633 17.7509 8.94529 17.0895 7.95303 16.0322C7.66958 15.7302 7.68423 15.2551 7.98623 14.9717C8.28827 14.6882 8.76332 14.7038 9.04678 15.0059C9.76531 15.7714 10.7918 16.2509 11.9345 16.251C13.7811 16.251 15.3202 14.9995 15.7489 13.3203L15.5194 13.541C15.2207 13.8279 14.7458 13.8183 14.4589 13.5195C14.172 13.2208 14.1816 12.7459 14.4804 12.459L16.0995 10.9043L16.1571 10.8545C16.2964 10.7457 16.4702 10.6892 16.6483 10.6963Z" fill="currentColor"/>
<path d="M12.0439 6.25C13.6212 6.25007 15.0435 6.92052 16.0331 7.99023C16.3144 8.2943 16.2952 8.7695 15.9911 9.05078C15.6871 9.33171 15.2128 9.31351 14.9315 9.00977C14.2153 8.23556 13.1879 7.75007 12.0439 7.75C10.2064 7.75 8.67087 9.00129 8.24502 10.6836L8.48037 10.459C8.77922 10.1725 9.25421 10.1819 9.54092 10.4805C9.82745 10.7793 9.81801 11.2543 9.51944 11.541L7.89639 13.0967C7.74909 13.2379 7.55047 13.313 7.34659 13.3047C7.14286 13.2963 6.95153 13.2054 6.81631 13.0527L5.43838 11.4971C5.16387 11.187 5.19278 10.7131 5.50283 10.4385C5.81293 10.164 6.28685 10.1929 6.56143 10.5029L6.71377 10.6748C7.16785 8.15565 9.38519 6.25 12.0439 6.25Z" fill="currentColor"/>''',
    accent: r'''<circle opacity="0.5" cx="12" cy="12" r="10" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'refresh-circle',
    style: SolarIconStyle.broken,
    body: r'''<path d="M7.37756 12.5556L7.37756 11.6296C7.37756 9.07276 9.46667 7 12.0437 7C13.4045 7 14.6293 7.57797 15.4822 8.5M6 11L7.37756 12.5556L9 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.6188 11.4453V12.3712C16.6188 14.9281 14.5217 17.0009 11.9348 17.0009C10.5777 17.0009 9.35544 16.4304 8.5 15.5189M18 13L16.6188 11.4453L15 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'refresh-circle',
    style: SolarIconStyle.linear,
    body: r'''<path d="M7.37756 12.5556L7.37756 11.6296C7.37756 9.07276 9.46667 7 12.0437 7C13.4045 7 14.6293 7.57797 15.4822 8.5M6 11L7.37756 12.5556L9 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.6188 11.4453V12.3712C16.6188 14.9281 14.5217 17.0009 11.9348 17.0009C10.5777 17.0009 9.35544 16.4304 8.5 15.5189M18 13L16.6188 11.4453L15 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'refresh-circle',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M7.37769 11.6296C7.37769 9.07276 9.46679 7 12.0438 7C13.4046 7 14.6294 7.57797 15.4824 8.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 11L7.37756 12.5556L6 11M7.37756 12.5556L7.37756 11.6296" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.6188 12.3711C16.6188 14.928 14.5217 17.0007 11.9348 17.0007C10.5777 17.0007 9.35544 16.4303 8.5 15.5188" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 13L16.6188 11.4453L18 13M16.6188 11.4453V12.3712" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent: r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'refresh-circle',
    style: SolarIconStyle.outline,
    body: r'''<path d="M6.71275 10.6736C7.16723 8.15492 9.38539 6.25 12.0437 6.25C13.6212 6.25 15.0431 6.9209 16.0328 7.9907C16.3141 8.29476 16.2956 8.76927 15.9915 9.05055C15.6875 9.33183 15.213 9.31337 14.9317 9.0093C14.2154 8.23504 13.1879 7.75 12.0437 7.75C10.2056 7.75 8.66974 9.00212 8.24452 10.6853L8.48095 10.4586C8.77994 10.172 9.25471 10.182 9.54137 10.4809C9.82804 10.7799 9.81805 11.2547 9.51905 11.5414L7.89662 13.0969C7.74932 13.2381 7.55084 13.3133 7.34695 13.3049C7.14306 13.2966 6.95137 13.2056 6.81608 13.0528L5.43852 11.4972C5.16391 11.1871 5.19267 10.7131 5.50277 10.4385C5.81286 10.1639 6.28686 10.1927 6.56148 10.5028L6.71275 10.6736Z" fill="currentColor"/>
<path d="M16.6485 10.6959C16.8523 10.704 17.044 10.7947 17.1795 10.9472L18.5607 12.5019C18.8358 12.8115 18.8078 13.2856 18.4981 13.5607C18.1885 13.8358 17.7144 13.8078 17.4393 13.4981L17.2841 13.3234C16.8295 15.8458 14.6011 17.7509 11.9348 17.7509C10.3635 17.7509 8.94543 17.0895 7.95312 16.0322C7.66966 15.7302 7.68472 15.2555 7.98675 14.9721C8.28879 14.6886 8.76342 14.7037 9.04688 15.0057C9.76546 15.7714 10.792 16.2509 11.9348 16.2509C13.7819 16.2509 15.322 14.9991 15.7503 13.3193L15.5195 13.5409C15.2208 13.8278 14.746 13.8183 14.4591 13.5195C14.1721 13.2208 14.1817 12.746 14.4805 12.4591L16.0993 10.9044C16.2464 10.7631 16.4447 10.6878 16.6485 10.6959Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C17.1086 2.75 21.25 6.89137 21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12Z" fill="currentColor"/>''',
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
