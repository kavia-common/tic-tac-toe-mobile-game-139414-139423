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

    // Grid should have 9 tappable tiles
    // We verify by tapping a couple of locations on the board area via semantics
    // but for simplicity just ensure there are at least some Material tiles.
    expect(find.byType(GridView), findsOne);
  });

  testWidgets('Tapping a board cell marks X', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());
    // Find board and tap roughly first cell by tapping on first GridView child via hitTestable
    final grid = find.byType(GridView);
    expect(grid, findsOneWidget);

    // Tap at a location inside the grid (top-left area)
    await tester.tapAt(const Offset(50, 250));
    await tester.pumpAndSettle(const Duration(milliseconds: 400));

    // There should be at least one 'X' on screen now
    expect(find.text('X'), findsWidgets);
  });
}
