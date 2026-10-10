import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_solar_icons/dynamic/home.dart';
import 'package:flutter_solar_icons_example/gallery.dart';

void main() {
  testWidgets('gallery shows the catalogue with a working search', (tester) async {
    await tester.pumpWidget(const SolarGalleryApp());
    await tester.pump();

    expect(find.text('Solar Icons — Flutter'), findsOneWidget);
    expect(find.text('Showing 1451 icons'), findsOneWidget);
    expect(tester.takeException(), isNull);

    final searchField = find.byWidgetPredicate(
      (w) =>
          w is TextField && w.decoration?.hintText == 'Search all icons...',
    );
    await tester.enterText(searchField, 'home');
    await tester.pump();

    expect(find.byType(HomeIcon), findsWidgets);
    expect(tester.takeException(), isNull);
  });
}
