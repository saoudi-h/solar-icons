// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-fork` icon in every style.
///
/// Prefer the static widgets (e.g. `GitForkLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class GitForkIcon extends StatelessWidget {
  /// Creates the `git-fork` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const GitForkIcon({
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
    name: 'git-fork',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19 1.25C21.0711 1.25 22.75 2.92893 22.75 5C22.75 6.8152 21.4601 8.32843 19.7471 8.6748C19.7409 9.31008 19.7153 9.88274 19.6016 10.3662C19.4302 11.0946 19.056 11.6601 18.3467 12.0654C17.687 12.4423 16.8826 12.5991 15.8975 12.6748C15.0653 12.7387 14.0327 12.7476 12.75 12.749V15.3281C14.4618 15.6755 15.75 17.1896 15.75 19.0039C15.75 21.075 14.0711 22.7539 12 22.7539C9.92893 22.7539 8.25 21.075 8.25 19.0039C8.25 17.1896 9.53824 15.6755 11.25 15.3281V12.749C9.96734 12.7476 8.93471 12.7387 8.10254 12.6748C7.11744 12.5991 6.31299 12.4423 5.65332 12.0654C4.94399 11.6601 4.56981 11.0946 4.39844 10.3662C4.28469 9.88274 4.25815 9.31008 4.25195 8.6748C2.53936 8.32806 1.25 6.81487 1.25 5C1.25 2.92893 2.92893 1.25 5 1.25C7.07107 1.25 8.75 2.92893 8.75 5C8.75 6.81348 7.46259 8.32556 5.75195 8.67383C5.75829 9.27356 5.7811 9.69376 5.8584 10.0225C5.94331 10.3833 6.08166 10.5822 6.39746 10.7627C6.76285 10.9715 7.29597 11.108 8.2168 11.1787C9.13436 11.2492 10.3379 11.25 12 11.25C13.6621 11.25 14.8656 11.2492 15.7832 11.1787C16.704 11.108 17.2372 10.9715 17.6025 10.7627C17.9183 10.5822 18.0567 10.3833 18.1416 10.0225C18.2189 9.69377 18.2407 9.27355 18.2471 8.67383C16.5369 8.3252 15.25 6.81314 15.25 5C15.25 2.92893 16.9289 1.25 19 1.25ZM12 16.7539C10.7574 16.7539 9.75 17.7613 9.75 19.0039C9.75 20.2465 10.7574 21.2539 12 21.2539C13.2426 21.2539 14.25 20.2465 14.25 19.0039C14.25 17.7613 13.2426 16.7539 12 16.7539ZM5 2.75C3.75736 2.75 2.75 3.75736 2.75 5C2.75 6.24264 3.75736 7.25 5 7.25C6.24264 7.25 7.25 6.24264 7.25 5C7.25 3.75736 6.24264 2.75 5 2.75ZM19 2.75C17.7574 2.75 16.75 3.75736 16.75 5C16.75 6.24264 17.7574 7.25 19 7.25C20.2426 7.25 21.25 6.24264 21.25 5C21.25 3.75736 20.2426 2.75 19 2.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'git-fork',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 15.2539C14.0711 15.2539 15.75 16.9328 15.75 19.0039C15.75 21.075 14.0711 22.7539 12 22.7539C9.92893 22.7539 8.25 21.075 8.25 19.0039C8.25 16.9328 9.92893 15.2539 12 15.2539ZM12 16.7539C10.7574 16.7539 9.75 17.7613 9.75 19.0039C9.75 20.2465 10.7574 21.2539 12 21.2539C13.2426 21.2539 14.25 20.2465 14.25 19.0039C14.25 17.7613 13.2426 16.7539 12 16.7539Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M5 1.25C7.07107 1.25 8.75 2.92893 8.75 5C8.75 7.07107 7.07107 8.75 5 8.75C2.92893 8.75 1.25 7.07107 1.25 5C1.25 2.92893 2.92893 1.25 5 1.25ZM5 2.75C3.75736 2.75 2.75 3.75736 2.75 5C2.75 6.24264 3.75736 7.25 5 7.25C6.24264 7.25 7.25 6.24264 7.25 5C7.25 3.75736 6.24264 2.75 5 2.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M19 1.25C21.0711 1.25 22.75 2.92893 22.75 5C22.75 7.07107 21.0711 8.75 19 8.75C16.9289 8.75 15.25 7.07107 15.25 5C15.25 2.92893 16.9289 1.25 19 1.25ZM19 2.75C17.7574 2.75 16.75 3.75736 16.75 5C16.75 6.24264 17.7574 7.25 19 7.25C20.2426 7.25 21.25 6.24264 21.25 5C21.25 3.75736 20.2426 2.75 19 2.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.25 15.999V12.749C9.96736 12.7475 8.93473 12.7387 8.10255 12.6748C7.11746 12.5991 6.313 12.4423 5.65333 12.0654C4.94401 11.6601 4.56982 11.0946 4.39845 10.3662C4.24568 9.71689 4.25001 8.9067 4.25001 8C4.25001 7.58579 4.5858 7.25 5.00001 7.25C5.41423 7.25 5.75001 7.58579 5.75001 8C5.75001 8.97872 5.75496 9.58255 5.85841 10.0225C5.94332 10.3833 6.08167 10.5822 6.39747 10.7627C6.76286 10.9715 7.29599 11.108 8.21681 11.1787C9.13437 11.2492 10.3379 11.25 12 11.25C13.6622 11.25 14.8657 11.2492 15.7832 11.1787C16.704 11.108 17.2372 10.9715 17.6026 10.7627C17.9184 10.5822 18.0567 10.3833 18.1416 10.0225C18.2451 9.58255 18.25 8.97872 18.25 8C18.25 7.58579 18.5858 7.25 19 7.25C19.4142 7.25 19.75 7.58579 19.75 8C19.75 8.9067 19.7543 9.71689 19.6016 10.3662C19.4302 11.0946 19.056 11.6601 18.3467 12.0654C17.687 12.4423 16.8826 12.5991 15.8975 12.6748C15.0653 12.7387 14.0327 12.7475 12.75 12.749V15.999C12.75 16.4132 12.4142 16.749 12 16.749C11.5858 16.749 11.25 16.4132 11.25 15.999Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'git-fork',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 5C2 6.65685 3.34315 8 5 8C6.65685 8 8 6.65685 8 5C8 3.34315 6.65685 2 5 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 5C22 6.65686 20.6569 8 19 8C17.3431 8 16 6.65686 16 5C16 3.34315 17.3431 2 19 2C20.6569 2 22 3.34315 22 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 19.0039C15 20.6608 13.6569 22.0039 12 22.0039C10.3431 22.0039 9 20.6608 9 19.0039C9 17.3471 10.3431 16.0039 12 16.0039C13.6569 16.0039 15 17.3471 15 19.0039Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 15.999L12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 8C19 9.88562 19 10.8284 17.9749 11.4142C16.9497 12 15.2998 12 12 12C8.70017 12 7.05025 12 6.02513 11.4142C5 10.8284 5 9.88562 5 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'git-fork',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 5C8 6.65685 6.65685 8 5 8C3.34315 8 2 6.65685 2 5C2 3.34315 3.34315 2 5 2C6.65685 2 8 3.34315 8 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 5C22 6.65686 20.6569 8 19 8C17.3431 8 16 6.65686 16 5C16 3.34315 17.3431 2 19 2C20.6569 2 22 3.34315 22 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 19.0039C15 20.6608 13.6569 22.0039 12 22.0039C10.3431 22.0039 9 20.6608 9 19.0039C9 17.3471 10.3431 16.0039 12 16.0039C13.6569 16.0039 15 17.3471 15 19.0039Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 15.999L12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 8C5 9.88562 5 10.8284 6.02513 11.4142C7.05025 12 8.70017 12 12 12C15.2998 12 16.9497 12 17.9749 11.4142C19 10.8284 19 9.88562 19 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'git-fork',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 5C8 6.65685 6.65685 8 5 8C3.34315 8 2 6.65685 2 5C2 3.34315 3.34315 2 5 2C6.65685 2 8 3.34315 8 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 5C22 6.65686 20.6569 8 19 8C17.3431 8 16 6.65686 16 5C16 3.34315 17.3431 2 19 2C20.6569 2 22 3.34315 22 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 19.0039C15 20.6608 13.6569 22.0039 12 22.0039C10.3431 22.0039 9 20.6608 9 19.0039C9 17.3471 10.3431 16.0039 12 16.0039C13.6569 16.0039 15 17.3471 15 19.0039Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 15.999V12M12 12C15.2998 12 16.9497 12 17.9749 11.4142C19 10.8284 19 9.88562 19 8M12 12C8.70017 12 7.05025 12 6.02513 11.4142C5 10.8284 5 9.88562 5 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'git-fork',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19 1.25C21.0711 1.25 22.75 2.92893 22.75 5C22.75 6.8152 21.4601 8.32843 19.7471 8.6748C19.7409 9.31008 19.7153 9.88274 19.6016 10.3662C19.4302 11.0946 19.056 11.6601 18.3467 12.0654C17.687 12.4423 16.8826 12.5991 15.8975 12.6748C15.0653 12.7387 14.0327 12.7476 12.75 12.749V15.3281C14.4618 15.6755 15.75 17.1896 15.75 19.0039C15.75 21.075 14.0711 22.7539 12 22.7539C9.92893 22.7539 8.25 21.075 8.25 19.0039C8.25 17.1896 9.53824 15.6755 11.25 15.3281V12.749C9.96734 12.7476 8.93471 12.7387 8.10254 12.6748C7.11744 12.5991 6.31299 12.4423 5.65332 12.0654C4.94399 11.6601 4.56981 11.0946 4.39844 10.3662C4.28469 9.88274 4.25815 9.31008 4.25195 8.6748C2.53936 8.32806 1.25 6.81487 1.25 5C1.25 2.92893 2.92893 1.25 5 1.25C7.07107 1.25 8.75 2.92893 8.75 5C8.75 6.81348 7.46259 8.32556 5.75195 8.67383C5.75829 9.27356 5.7811 9.69376 5.8584 10.0225C5.94331 10.3833 6.08166 10.5822 6.39746 10.7627C6.76285 10.9715 7.29597 11.108 8.2168 11.1787C9.13436 11.2492 10.3379 11.25 12 11.25C13.6621 11.25 14.8656 11.2492 15.7832 11.1787C16.704 11.108 17.2372 10.9715 17.6025 10.7627C17.9183 10.5822 18.0567 10.3833 18.1416 10.0225C18.2189 9.69377 18.2407 9.27355 18.2471 8.67383C16.5369 8.3252 15.25 6.81314 15.25 5C15.25 2.92893 16.9289 1.25 19 1.25ZM12 16.7539C10.7574 16.7539 9.75 17.7613 9.75 19.0039C9.75 20.2465 10.7574 21.2539 12 21.2539C13.2426 21.2539 14.25 20.2465 14.25 19.0039C14.25 17.7613 13.2426 16.7539 12 16.7539ZM5 2.75C3.75736 2.75 2.75 3.75736 2.75 5C2.75 6.24264 3.75736 7.25 5 7.25C6.24264 7.25 7.25 6.24264 7.25 5C7.25 3.75736 6.24264 2.75 5 2.75ZM19 2.75C17.7574 2.75 16.75 3.75736 16.75 5C16.75 6.24264 17.7574 7.25 19 7.25C20.2426 7.25 21.25 6.24264 21.25 5C21.25 3.75736 20.2426 2.75 19 2.75Z" fill="currentColor"/>''',
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
