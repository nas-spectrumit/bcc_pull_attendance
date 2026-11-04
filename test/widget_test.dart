import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bcc_pull_attendance/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App smoke test renders splash screen', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(const BccPullApp());
    await tester.pump();

    expect(find.text('BCC PULL DATA'), findsWidgets);
    expect(find.text('Attendance & Staff Management Portal'), findsOneWidget);

    // Advance past splash timer and navigation transition
    await tester.pump(const Duration(milliseconds: 1900));
    await tester.pump(const Duration(milliseconds: 600));
  });
}
