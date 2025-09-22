import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('Renders Tic Tac Toe UI with header and board', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    expect(find.text('Tic Tac Toe'), findsOneWidget);
    expect(find.text('Player X'), findsOneWidget);
    expect(find.text('Player O'), findsNothing); // In CPU mode shows "Computer O"
    expect(find.text('Computer O'), findsOneWidget);
    expect(find.text('Score'), findsOneWidget);

    // Grid should have 9 cells; ensure GridView exists.
    expect(find.byType(GridView), findsOneWidget);
  });

  testWidgets('Tapping a board cell marks X', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // Ensure grid is present.
    final grid = find.byType(GridView);
    expect(grid, findsOneWidget);

    // Tap at a location inside the grid; approximate based on general layout.
    await tester.tap(grid);
    await tester.pumpAndSettle(const Duration(milliseconds: 400));

    // There should be at least one 'X' on screen now
    expect(find.text('X'), findsWidgets);
  });
}
