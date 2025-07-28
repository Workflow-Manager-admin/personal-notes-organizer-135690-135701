import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('Notes app shows My Notes', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    expect(find.text('My Notes'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Main FAB is visible', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
