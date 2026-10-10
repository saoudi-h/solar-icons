// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-code` icon in the boldDuotone style.
class FileCodeBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `file-code` icon in the boldDuotone style.
  const FileCodeBoldDuotoneIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'file-code',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.29774 13.7373C9.44318 13.3495 9.87572 13.1524 10.2636 13.2979C10.6512 13.4434 10.8474 13.8759 10.702 14.2637L9.20204 18.2637C9.05655 18.6514 8.62401 18.8476 8.23622 18.7021C7.84876 18.5566 7.65261 18.1249 7.79774 17.7373L9.29774 13.7373Z" fill="currentColor"/>
<path d="M10.9696 15.4697C11.2625 15.177 11.7373 15.177 12.0302 15.4697L13.0302 16.4697C13.323 16.7626 13.323 17.2374 13.0302 17.5303L12.0302 18.5303C11.7373 18.8232 11.2625 18.8232 10.9696 18.5303C10.6768 18.2374 10.6768 17.7626 10.9696 17.4697L11.4393 17L10.9696 16.5303C10.6768 16.2374 10.6768 15.7626 10.9696 15.4697Z" fill="currentColor"/>
<path d="M6.46962 13.4697C6.76249 13.177 7.2373 13.177 7.53017 13.4697C7.82303 13.7626 7.82296 14.2374 7.53017 14.5303L7.06044 15L7.53017 15.4697C7.82303 15.7626 7.82296 16.2374 7.53017 16.5303C7.23727 16.8232 6.76251 16.8232 6.46962 16.5303L5.46962 15.5303C5.17683 15.2374 5.17676 14.7626 5.46962 14.4697L6.46962 13.4697Z" fill="currentColor"/>
<path d="M11.4999 2.00586C12.0265 2.01725 12.4002 2.05009 12.7841 2.14453C12.9403 2.18298 13.1406 2.24407 13.2919 2.29883C13.8621 2.50534 14.2784 2.7833 15.1102 3.33887C16.0787 3.98569 17.1891 4.777 17.9999 5.5C18.9109 6.31239 19.9545 7.49387 20.747 8.44238C20.8744 8.59494 20.9379 8.67168 21.0311 8.79883C21.5612 9.52144 21.9335 10.546 21.9901 11.4404C22.0001 11.5979 21.9999 11.7325 21.9999 12H21.9843C21.978 11.8216 21.9693 11.6555 21.9569 11.5H17.9052C16.8081 11.5001 15.838 11.4996 15.0565 11.3945C14.2096 11.2806 13.3629 11.0192 12.6718 10.3281C11.9805 9.63685 11.7183 8.7895 11.6044 7.94238C11.4994 7.16098 11.4998 6.19157 11.4999 5.09473L11.5087 2.25977L11.4999 2.00586Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M10 22H14C17.7712 22 19.6569 22 20.8284 20.8284C22 19.6569 22 17.7712 22 14V13.5629C22 12.6901 22 12.0344 21.9574 11.5001H18L17.9051 11.5001C16.808 11.5002 15.8385 11.5003 15.0569 11.3952C14.2098 11.2813 13.3628 11.0198 12.6716 10.3285C11.9803 9.63726 11.7188 8.79028 11.6049 7.94316C11.4998 7.16164 11.4999 6.19207 11.5 5.09497L11.5092 2.26057C11.5095 2.17813 11.5166 2.09659 11.53 2.01666C11.1214 2 10.6358 2 10.0298 2C6.23869 2 4.34315 2 3.17157 3.17157C2 4.34315 2 6.22876 2 10V14C2 17.7712 2 19.6569 3.17157 20.8284C4.34315 22 6.22876 22 10 22Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => data;

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

@Deprecated(
  'Normalized the legacy *-file name to the file-* naming convention. Deprecated since 2026-09-11. Use FileCodeBoldDuotoneIcon instead.',
)
typedef CodeFileBoldDuotoneIcon = FileCodeBoldDuotoneIcon;
