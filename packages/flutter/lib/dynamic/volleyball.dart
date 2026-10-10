// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `volleyball` icon in every style.
///
/// Prefer the static widgets (e.g. `VolleyballLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class VolleyballIcon extends StatelessWidget {
  /// Creates the `volleyball` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const VolleyballIcon({
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
    name: 'volleyball',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.0171 12.9934C13.94 13.039 15.7856 13.5932 17.38 14.5629C14.4913 17.5983 10.3915 19.703 6.21502 20.1577C5.33561 19.533 4.56158 18.7696 3.92479 17.8994C7.00231 17.4192 9.81188 15.7992 11.756 13.3257L12.0171 12.9934Z" fill="currentColor"/>
<path d="M20.4402 17.3653C18.6653 20.1517 15.5485 21.9999 12 21.9999C10.7178 21.9999 9.49188 21.7586 8.36531 21.3188C12.2683 20.4477 15.9424 18.3132 18.6152 15.439C19.2956 15.9979 19.91 16.6432 20.4402 17.3653Z" fill="currentColor"/>
<path d="M21.6241 11.3581L21.6261 11.3601L21.9965 11.7327C21.9988 11.8215 22 11.9106 22 11.9999C22 13.3876 21.7173 14.7093 21.2065 15.9105C18.9642 13.2085 15.6375 11.5871 12.0812 11.4946C11.2524 10.0502 10.8302 8.43473 10.828 6.81111C14.8825 6.8899 18.7527 8.51769 21.6241 11.3581Z" fill="currentColor"/>
<path d="M10.9458 5.31334C11.0638 4.5752 11.2705 3.84586 11.5673 3.14096L12.0477 2C16.6314 2.02142 20.4864 5.12669 21.6445 9.34767C18.6556 6.83888 14.881 5.4099 10.9458 5.31334Z" fill="currentColor"/>
<path d="M10.5766 12.3988C9.64853 13.5796 8.49484 14.5397 7.19986 15.2379C5.62198 11.4338 5.51513 7.26247 6.87932 3.40866C7.93127 2.7803 9.1083 2.33968 10.3642 2.13303L10.1849 2.55887C8.86607 5.69099 9.08193 9.23954 10.7467 12.1824L10.5766 12.3988Z" fill="currentColor"/>
<path d="M4.8586 4.99986C3.09033 6.80361 2 9.27442 2 11.9999C2 13.6173 2.38398 15.145 3.06576 16.4969C4.01958 16.4039 4.94937 16.1873 5.83307 15.8577C4.37799 12.3757 4.05507 8.60441 4.86431 4.99403L4.8586 4.99986Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'volleyball',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4.86426 4.99414C4.05511 8.60441 4.37798 12.3755 5.83301 15.8574C4.94932 16.187 4.01923 16.4042 3.06543 16.4971C2.3837 15.1453 2.00005 13.6173 2 12C2 9.27467 3.09029 6.80373 4.8584 5L4.86426 4.99414Z" fill="currentColor"/>
<path d="M10.1846 2.55859C8.8658 5.6907 9.08232 9.23977 10.7471 12.1826L10.5762 12.3984C9.6482 13.5791 8.49496 14.5392 7.2002 15.2373C5.6224 11.4333 5.51474 7.26194 6.87891 3.4082C7.93086 2.77985 9.10839 2.33946 10.3643 2.13281L10.1846 2.55859Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M18.6152 15.4385C19.2957 15.9974 19.9102 16.6432 20.4404 17.3652C18.6655 20.1515 15.5484 22 12 22C10.7178 22 9.4918 21.7581 8.36523 21.3184C12.2683 20.4472 15.9425 18.3127 18.6152 15.4385Z" fill="currentColor"/>
<path d="M12.0176 12.9932C13.9402 13.0388 15.7856 13.593 17.3799 14.5625C14.4912 17.5979 10.3914 19.7025 6.21484 20.1572C5.33558 19.5325 4.56152 18.7694 3.9248 17.8994C7.00233 17.4192 9.81179 15.7987 11.7559 13.3252L12.0176 12.9932Z" fill="currentColor"/>
<path d="M10.8281 6.81152C14.8827 6.89031 18.7526 8.51798 21.624 11.3584L21.626 11.3604L21.9971 11.7324C21.9994 11.8212 22 11.9107 22 12C22 13.3875 21.7178 14.7091 21.207 15.9102C18.9648 13.2081 15.6374 11.5867 12.0811 11.4941C11.2525 10.05 10.8304 8.43484 10.8281 6.81152Z" fill="currentColor"/>
<path d="M12.0479 2C16.6315 2.02142 20.4864 5.1267 21.6445 9.34766C18.6557 6.83896 14.8813 5.4101 10.9463 5.31348C11.0642 4.57533 11.2706 3.84553 11.5674 3.14062L12.0479 2Z" fill="currentColor"/>
</g>

<g opacity="0.5">
<path d="M18.6152 15.4385C19.2957 15.9974 19.9102 16.6432 20.4404 17.3652C18.6655 20.1515 15.5484 22 12 22C10.7178 22 9.4918 21.7581 8.36523 21.3184C12.2683 20.4472 15.9425 18.3127 18.6152 15.4385Z" fill="currentColor"/>
<path d="M12.0176 12.9932C13.9402 13.0388 15.7856 13.593 17.3799 14.5625C14.4912 17.5979 10.3914 19.7025 6.21484 20.1572C5.33558 19.5325 4.56152 18.7694 3.9248 17.8994C7.00233 17.4192 9.81179 15.7987 11.7559 13.3252L12.0176 12.9932Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'volleyball',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 2L11.3142 3.64586C10.1761 6.37726 10.4317 9.49075 12 12M12 12H12.0917C15.4705 12 18.6258 13.6887 20.5 16.5M12 12L11.5697 12.5532C9.63285 15.0435 6.65478 16.5 3.5 16.5M18 14L17.7087 14.3204C14.7097 17.6193 10.191 19.7928 5.7327 19.7928M21.9877 11.5L21.2426 10.7426C18.5261 8.02612 14.8417 6.5 11 6.5M7.5 3.06729C5.9 6.90729 5.9 11.16 7.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.33874 6.99805C4.18713 5.52576 5.42255 4.25018 6.99996 3.33946C11.7829 0.578039 17.8988 2.21679 20.6602 6.99972C23.4216 11.7826 21.7829 17.8985 17 20.66C12.217 23.4214 6.10113 21.7826 3.33971 16.9997C2.42899 15.4223 1.99687 13.6999 1.99829 12.0007" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'volleyball',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2ZM12 2L11.3142 3.64586C10.1761 6.37726 10.4317 9.49075 12 12M12 12H12.0917C15.4705 12 18.6258 13.6887 20.5 16.5M12 12L11.5697 12.5532C9.63285 15.0435 6.65478 16.5 3.5 16.5M18 14L17.7087 14.3204C14.7097 17.6193 10.191 19.7928 5.7327 19.7928M21.9877 11.5L21.2426 10.7426C18.5261 8.02612 14.8417 6.5 11 6.5M7.5 3.06729C5.9 6.90729 5.9 11.16 7.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'volleyball',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2L11.3142 3.64586C10.1761 6.37726 10.4317 9.49075 12 12M12 12H12.0917C15.4705 12 18.6258 13.6887 20.5 16.5M12 12L11.5697 12.5532C9.63285 15.0435 6.65478 16.5 3.5 16.5M18 14L17.7087 14.3204C14.7097 17.6193 10.191 19.7928 5.7327 19.7928M21.9877 11.5L21.2426 10.7426C18.5261 8.02612 14.8417 6.5 11 6.5M7.5 3.06729C5.9 6.90729 5.9 11.16 7.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'volleyball',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C9.44948 22.75 7.10642 21.8618 5.26327 20.3778C5.26237 20.377 5.26147 20.3763 5.26057 20.3756C2.81481 18.4051 1.25 15.3853 1.25 12ZM8.04197 20.3628C9.2419 20.9317 10.5838 21.25 12 21.25C15.315 21.25 18.2226 19.5062 19.8558 16.8859C19.3678 16.16 18.7873 15.5156 18.1356 14.9642C15.5297 17.766 11.8666 19.7717 8.04197 20.3628ZM16.9049 14.0831C14.0996 17.0241 10.0216 18.9577 5.99973 19.0401C5.37613 18.5081 4.82408 17.8947 4.36003 17.2163C7.42232 16.9758 10.2597 15.4591 12.1617 13.0137L12.3637 12.7539C13.9877 12.8011 15.5476 13.2689 16.9049 14.0831ZM12.4304 11.2553C15.6411 11.3552 18.6342 12.8723 20.613 15.3801C21.0242 14.3331 21.25 13.1929 21.25 12C21.25 11.9391 21.2494 11.8784 21.2482 11.8178L20.7123 11.273C20.7116 11.2722 20.7108 11.2715 20.7101 11.2708C18.2199 8.78174 14.8726 7.34726 11.3621 7.25477C11.3781 8.6414 11.7377 10.0185 12.4304 11.2553ZM11.4794 5.75754C14.9385 5.86634 18.2504 7.14958 20.8747 9.38333C19.7905 5.70046 16.4763 2.97277 12.4946 2.763L12.0065 3.93432C11.7598 4.52647 11.5844 5.13819 11.4794 5.75754ZM10.8453 2.82138C9.87052 2.94276 8.94286 3.21581 8.08664 3.61615C6.69211 7.14679 6.70456 11.0203 8.12401 14.5448C9.21599 13.9342 10.1898 13.1058 10.9777 12.0928L11.0955 11.9413C9.64098 9.3109 9.45848 6.14964 10.6219 3.35739L10.8453 2.82138ZM6.75952 15.1716C5.41261 11.8684 5.19063 8.27859 6.09358 4.88093C4.05077 6.57765 2.75 9.13692 2.75 12C2.75 13.3349 3.03276 14.6037 3.54166 15.7499C4.65324 15.745 5.74056 15.5451 6.75952 15.1716Z" fill="currentColor"/>''',
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
