import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ldsw_utilizacion_de_widgets/main.dart';

void main() {
  testWidgets('Muestra el perfil y los cinco widgets', (tester) async {
    await tester.pumpWidget(const MiAplicacion());

    expect(find.text('Mi perfil de estudiante'), findsOneWidget);
    expect(find.text('Cynthia Jeanette Sánchez Rocha'), findsOneWidget);
    expect(find.text('UDGVirtual'), findsOneWidget);

    for (final tipo in [Text, Row, Column, Stack, Container]) {
      expect(find.byType(tipo), findsWidgets);
    }

    expect(tester.takeException(), isNull);
  });
}
