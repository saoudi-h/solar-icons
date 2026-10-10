# solar_icons

Flutter widgets for Solar Icons. The package draws 1,451 icons across six styles (8,706 SVG variations): Bold, Broken, Linear, Outline, Bold Duotone, and Line Duotone.

## Install

```sh
flutter pub add solar_icons
```

To work from a local checkout instead, depend on the package with a path.
Generate the widgets from the catalogue first, then point at the package:

```sh
node packages/flutter/tool/generate_icons.mjs
```

```yaml
dependencies:
  solar_icons:
    path: packages/flutter
```

Adjust the path to where this package sits relative to the app. The example app at `packages/flutter/example` already does this.

## Usage

```dart
import 'package:solar_icons/solar_icons.dart';

HomeIcon(
  size: 32,
  color: Color(0xFF1C274C),
  strokeWidth: 2,
)
```

`style` selects the weight. It defaults to linear.

```dart
ArrowRightIcon(
  style: SolarIconStyle.boldDuotone,
  secondaryColor: Color(0xFF94A3B8),
  secondaryOpacity: 0.5,
)
```

Each icon also exposes its six payloads. Pass one to `SolarIcon` when you want the data directly:

```dart
SolarIcon(HomeIcon.outline, size: 20)
```

Import one icon when you only need that widget:

```dart
import 'package:solar_icons/icons/home.dart';
```

`linear.dart`, `bold.dart`, `bold_duotone.dart`, `broken.dart`, `line_duotone.dart`, and `outline.dart` export the same catalogue. They are entry points, not separate icon sets.

### Theme

`SolarTheme` sets defaults for icons below it. Arguments on the icon win, then the theme, then the ambient `IconTheme`. Stroke width falls back to 1.5.

```dart
SolarTheme(
  size: 24,
  color: Color(0xFF111827),
  strokeWidth: 1.5,
  child: HomeIcon(),
)
```

Set `isolated: true` to ignore both themes and use the package defaults: 24px, `#1C274C`, and a 1.5 stroke.

## License

MIT. Icons by 480 Design (CC BY 4.0). Attribution is required.
