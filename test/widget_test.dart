import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bcc_pull_attendance/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App smoke test renders login screen', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(const BccPullApp());
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('BCC PULL DATA'), findsWidgets);
    expect(find.text('Sign In'), findsOneWidget);
  });
}
