import 'package:crypto_flutter_app/ui/widgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  Widget buildTestableWidget(Widget widget) {
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          home: Material(child: widget),
        ));
  }

  testWidgets('show Toast test', (WidgetTester tester) async {
    Builder button = Builder(
      builder: (BuildContext context) {
        return MaterialButton(
            key: Key('toastKey'),
            onPressed: () {
              CustomWidgets.showToast('Show Flutter Toast', context);
            });
      },
    );
    await tester.pumpWidget(buildTestableWidget(button));
    expect(find.byKey(Key('toastKey')), findsOneWidget);
    await tester.pump();
    await tester.tap(find.byKey(Key('toastKey')));
    await tester.pumpAndSettle();
  });

  testWidgets('TextField test', (WidgetTester tester) async {
    Widget textField = CustomWidgets.textField(
        textController: TextEditingController(),
        onChanged: (value) {},
        prefixIcon: Icon(Icons.attach_money));

    await tester.pumpWidget(buildTestableWidget(textField));
    expect(find.byType(TextFormField), findsOneWidget);
    await tester.pump();
    await tester.tap(find.byType(TextFormField));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.attach_money), findsOneWidget);
    await tester.pump();
  });
}
