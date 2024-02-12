import 'package:dart_application_28/domain/registr/history.dart';
import 'package:dart_application_28/domain/store_registr.dart';
import 'package:test/test.dart';

void main() {
  test('history_store_registr_test', () {
    final StoreRegistr<UidHistory, History> storeRegistr = StoreRegistr(values: []);

    // история продаж товара "Product 1" за 01.01.2024
    {
      final DateTime date = DateTime(2024, 1, 1);

      final List<History> list = storeRegistr
          .getList(
            UidHistory(
              uidPoint: null,
              uidDocument: null,
              uidProduct: 'Product 1',
              date: date,
            ),
          )
          .toList();

      list;
    }

    // история продаж товара "Product 1" по точке "Point 1"
    {
      final List<History> list = storeRegistr
          .getList(
            UidHistory(
              uidPoint: 'Point 1',
              uidDocument: null,
              uidProduct: 'Product 1',
              date: null,
            ),
          )
          .toList();

      list;
    }
  });
}
