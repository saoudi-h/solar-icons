# solaricons_flutter

Flutter widgets for Solar Icons. The package draws 1,451 icons across six styles (8,706 SVG variations): Bold, Broken, Linear, Outline, Bold Duotone, and Line Duotone.

## Install

```sh
flutter pub add solaricons_flutter
```

To work from a local checkout instead, generate the widgets from the catalogue first, then depend on the package with a path:

```sh
node packages/flutter/tool/generate_icons.mjs
node packages/flutter/tool/generate_gallery_registry.mjs # only for the example app
```

```yaml
dependencies:
  solaricons_flutter:
    path: packages/flutter
```

Adjust the path to where this package sits relative to the app. The example app at `packages/flutter/example` already does this.

## Static widgets

Each icon ships one widget per style. The style is in the import path and in the widget name, and only that style's SVG is embedded:

```dart
import 'package:solaricons_flutter/linear/home.dart';

HomeLinearIcon(
  size: 32,
  color: Color(0xFF1C274C),
  strokeWidth: 2,
)
```

Style barrels (`linear.dart`, `bold.dart`, `bold_duotone.dart`, `broken.dart`, `line_duotone.dart`, `outline.dart`) and the package root export the same widgets under the same names.

## Dynamic widgets

One widget covers every icon and style for names or styles that are only known at runtime. It embeds all six SVGs, so prefer the static widgets when the style is known upfront:

```dart
import 'package:solaricons_flutter/dynamic/arrow_right.dart';

ArrowRightIcon(
  style: SolarIconStyle.boldDuotone,
  secondaryColor: Color(0xFF94A3B8),
  secondaryOpacity: 0.5,
)
```

`style` wins, then `SolarProvider`, then `linear`. Static widgets always draw their own style.

Each dynamic widget also exposes its six payloads. Pass one to `SolarIcon` when you want the data directly:

```dart
SolarIcon(HomeIcon.outline, size: 20)
```

Static widgets expose their single payload the same way (`HomeLinearIcon.data`).

## Theme

`SolarProvider` sets defaults for icons below it. Arguments on the icon win, then the provider, then the ambient `IconTheme`. Stroke width falls back to 1.5. `style` also falls back to the provider, so one wrapper can set the style for every dynamic widget inside it; static widgets always draw their own style.

```dart
SolarProvider(
  size: 24,
  color: Color(0xFF111827),
  strokeWidth: 1.5,
  style: SolarIconStyle.bold,
  child: HomeIcon(),
)
```

Set `isolated: true` to ignore `SolarProvider` and the ambient `IconTheme` and use the package defaults: 24px, `#1C274C`, and a 1.5 stroke.

## License

MIT. Icons by 480 Design (CC BY 4.0). Attribution is required.
