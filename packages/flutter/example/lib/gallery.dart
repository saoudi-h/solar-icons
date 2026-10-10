import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import 'icon_registry.dart';

void main() {
  runApp(const SolarGalleryApp());
}

bool _isLinearLike(SolarIconStyle s) =>
    s == SolarIconStyle.linear ||
    s == SolarIconStyle.lineDuotone ||
    s == SolarIconStyle.broken ||
    s == SolarIconStyle.outline;

bool _isDuotone(SolarIconStyle s) =>
    s == SolarIconStyle.boldDuotone || s == SolarIconStyle.lineDuotone;

const _quickColors = <int>[
  0xFFF8FAFC,
  0xFF1C274C,
  0xFFEF4444,
  0xFFF59E0B,
  0xFF22C55E,
  0xFF3B82F6,
  0xFF06B6D4,
  0xFFA855F7,
  0xFFEC4899,
];
const _sizePresets = <double>[16, 20, 24, 28, 32, 40, 48, 64];
const _strokePresets = <double>[0.5, 0.75, 1, 1.25, 1.5, 2, 2.5, 3, 4];
const _opacityPresets = <double>[0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9];

Color? _parseHex(String text) {
  var t = text.trim();
  if (t.startsWith('#')) t = t.substring(1);
  if (t.length == 6) t = 'FF$t';
  if (t.length != 8) return null;
  final v = int.tryParse(t, radix: 16);
  return v == null ? null : Color(v);
}

class SolarGalleryApp extends StatelessWidget {
  const SolarGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar Icons',
      theme: ThemeData.dark(useMaterial3: true),
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
  SolarIconStyle _style = SolarIconStyle.bold;
  Color _color = const Color(0xFFF8FAFC);
  Color? _customColor;
  double _size = 32;
  String _customSize = '';
  double _stroke = 1.5;
  String _customStroke = '';
  Color? _secondary;
  double _opacity = 0.5;
  String _customOpacity = '';
  String _search = '';
  bool _darkCanvas = true;

  List<String> get _names => kSolarRegistry.keys.toList()..sort();

  List<String> get _filtered {
    // No cap: GridView.builder only builds visible rows, so showing the
    // whole catalogue costs nothing on first paint.
    if (_search.isEmpty) return _names;
    final q = _search.toLowerCase();
    return _names.where((n) => n.contains(q)).toList();
  }

  Color get _effectiveColor => _customColor ?? _color;
  double get _effectiveSize =>
      double.tryParse(_customSize) ?? _size;
  double get _effectiveStroke =>
      double.tryParse(_customStroke) ?? _stroke;
  double get _effectiveOpacity =>
      double.tryParse(_customOpacity) ?? _opacity;

  @override
  Widget build(BuildContext context) {
    final filtered = _filtered;
    final canvas = _darkCanvas ? const Color(0xFF0F172A) : Colors.white;
    final onCanvas =
        _darkCanvas ? const Color(0xFFF8FAFC) : const Color(0xFF1C274C);
    return Scaffold(
      backgroundColor: canvas,
      appBar: AppBar(
        title: const Text('Solar Icons — Flutter'),
        actions: [
          Row(
            children: [
              const Text('Dark'),
              Switch(
                value: _darkCanvas,
                onChanged: (v) => setState(() => _darkCanvas = v),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Text(
              '${_names.length} icons x 6 styles = ${_names.length * 6} variants',
              style: TextStyle(color: onCanvas.withValues(alpha: 0.6)),
            ),
          ),
          _chipRow<SolarIconStyle>(
            values: SolarIconStyle.values,
            selected: _style,
            label: (s) => s.name,
            onSelect: (s) => setState(() => _style = s),
          ),
          _sectionLabel('Color', onCanvas),
          _colorRow(
            selected: _customColor ?? _color,
            onSelect: (c) => setState(() {
              _color = c;
              _customColor = null;
            }),
          ),
          _hexField(
            hint: 'Custom hex (#ff0000)',
            onChanged: (t) => setState(
                () => _customColor = t.isEmpty ? null : _parseHex(t)),
          ),
          _sectionLabel('Size: ${_effectiveSize.toStringAsFixed(0)}px', onCanvas),
          _chipRow<double>(
            values: _sizePresets,
            selected: _customSize.isEmpty ? _size : -1,
            label: (v) => v.toStringAsFixed(0),
            onSelect: (v) => setState(() {
              _size = v;
              _customSize = '';
            }),
          ),
          _hexField(
            hint: 'Custom size...',
            number: true,
            onChanged: (t) => setState(() => _customSize = t),
          ),
          if (_isLinearLike(_style)) ...[
            _sectionLabel('Stroke: $_effectiveStroke', onCanvas),
            _chipRow<double>(
              values: _strokePresets,
              selected: _customStroke.isEmpty ? _stroke : -1,
              label: (v) => '$v',
              onSelect: (v) => setState(() {
              _stroke = v;
              _customStroke = '';
            }),
            ),
            _hexField(
              hint: 'Custom stroke...',
              number: true,
              onChanged: (t) => setState(() => _customStroke = t),
            ),
          ],
          if (_isDuotone(_style)) ...[
            _sectionLabel('Secondary color', onCanvas),
            _colorRow(
              selected: _secondary ?? _effectiveColor,
              onSelect: (c) => setState(() => _secondary = c),
            ),
            _sectionLabel('Secondary opacity: $_effectiveOpacity', onCanvas),
            _chipRow<double>(
              values: _opacityPresets,
              selected: _customOpacity.isEmpty ? _opacity : -1,
              label: (v) => '$v',
              onSelect: (v) => setState(() {
              _opacity = v;
              _customOpacity = '';
            }),
            ),
            _hexField(
              hint: 'Custom opacity (0-1)...',
              number: true,
              onChanged: (t) => setState(() => _customOpacity = t),
            ),
          ],
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search all icons...',
                border: OutlineInputBorder(),
                isDense: true,
              ),
              onChanged: (t) => setState(() => _search = t),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(
              'Showing ${filtered.length} icon${filtered.length == 1 ? '' : 's'}',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: onCanvas.withValues(alpha: 0.6), fontSize: 12),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate:
                  const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 120,
                mainAxisExtent: 104,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
              itemCount: filtered.length,
              itemBuilder: (context, i) {
                final name = filtered[i];
                final build = kSolarRegistry[name]!;
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: onCanvas.withValues(alpha: 0.12)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      build(
                        style: _style,
                        size: _effectiveSize.clamp(8, 96),
                        color: _effectiveColor,
                        strokeWidth:
                            _isLinearLike(_style) ? _effectiveStroke : null,
                        secondaryColor: _isDuotone(_style)
                            ? (_secondary ?? _effectiveColor)
                            : null,
                        secondaryOpacity:
                            _isDuotone(_style) ? _effectiveOpacity : null,
                      ),
                      const SizedBox(height: 6),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 10,
                              color:
                                  onCanvas.withValues(alpha: 0.55)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionLabel(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 2),
      child: Text(text,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: color)),
    );
  }

  Widget _chipRow<T>({
    required List<T> values,
    required T selected,
    required String Function(T) label,
    required void Function(T) onSelect,
  }) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          for (final v in values)
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: ChoiceChip(
                label: Text(label(v)),
                selected: v == selected,
                onSelected: (_) => onSelect(v),
              ),
            ),
        ],
      ),
    );
  }

  Widget _colorRow({
    required Color selected,
    required void Function(Color) onSelect,
  }) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          for (final c in _quickColors)
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: GestureDetector(
                onTap: () => onSelect(Color(c)),
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    color: Color(c),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selected.toARGB32() == c
                          ? Colors.white
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _hexField({
    required String hint,
    required void Function(String) onChanged,
    bool number = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: TextField(
        decoration: InputDecoration(hintText: hint, isDense: true),
        keyboardType: number ? TextInputType.number : TextInputType.text,
        onChanged: onChanged,
      ),
    );
  }
}
