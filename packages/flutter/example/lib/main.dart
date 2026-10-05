import 'package:flutter/material.dart';
import 'package:solar_icons/icons.dart';

void main() {
  runApp(const SolarIconsExampleApp());
}

class SolarIconsExampleApp extends StatelessWidget {
  const SolarIconsExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar Icons',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1C274C)),
      ),
      home: const GalleryPage(),
    );
  }
}

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  static const _color = Color(0xFF1C274C);
  static const _secondary = Color(0xFF8AA0C8);

  SolarIconStyle _style = SolarIconStyle.linear;
  double _strokeWidth = 1.5;

  static const _styles = <SolarIconStyle, String>{
    SolarIconStyle.linear: 'Linear',
    SolarIconStyle.broken: 'Broken',
    SolarIconStyle.outline: 'Outline',
    SolarIconStyle.bold: 'Bold',
    SolarIconStyle.lineDuotone: 'Line Duotone',
    SolarIconStyle.boldDuotone: 'Bold Duotone',
  };

  @override
  Widget build(BuildContext context) {
    final samples = _samples();
    return Scaffold(
      appBar: AppBar(title: const Text('Solar Icons')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 56,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                for (final entry in _styles.entries)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(entry.value),
                      selected: _style == entry.key,
                      onSelected: (_) => setState(() => _style = entry.key),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text('Stroke'),
                Expanded(
                  child: Slider(
                    value: _strokeWidth,
                    min: 0.5,
                    max: 3,
                    divisions: 10,
                    label: _strokeWidth.toStringAsFixed(1),
                    onChanged: (value) => setState(() => _strokeWidth = value),
                  ),
                ),
                SizedBox(
                  width: 32,
                  child: Text(_strokeWidth.toStringAsFixed(1)),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 112,
                mainAxisExtent: 96,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: samples.length,
              itemBuilder: (context, index) {
                final sample = samples[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sample.icon,
                    const SizedBox(height: 8),
                    Text(
                      sample.label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<_Sample> _samples() {
    _Sample draw({required String label, required Widget icon}) {
      return _Sample(label, icon);
    }

    return [
      draw(
        label: 'Home',
        icon: HomeIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'User',
        icon: UserIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Settings',
        icon: SettingsIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Bell',
        icon: BellIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Heart',
        icon: HeartIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Star',
        icon: StarIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Search',
        icon: MagnifierIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Sun',
        icon: SunIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Moon',
        icon: MoonIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Camera',
        icon: CameraIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Chat',
        icon: ChatRoundIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Folder',
        icon: FolderIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Bookmark',
        icon: BookmarkIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Calendar',
        icon: CalendarIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Login',
        icon: LoginIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
      draw(
        label: 'Arrow',
        icon: ArrowRightIcon(
          style: _style,
          strokeWidth: _strokeWidth,
          color: _color,
          secondaryColor: _secondary,
        ),
      ),
    ];
  }
}

class _Sample {
  const _Sample(this.label, this.icon);

  final String label;
  final Widget icon;
}
