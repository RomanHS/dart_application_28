import 'package:dart_application_28/domain/registr/leftover.dart';
import 'package:dart_application_28/domain/store_registr.dart';
import 'package:test/test.dart';

void main() {
  test('leftower_store_registr_test', () {
    final StoreRegistr<UidLeftover, Leftover> storeRegistr = StoreRegistr(values: []);

    // остаток товара "Product 1" по складу "Warehaus 1"
    {
      final Leftover? value = storeRegistr.get(
        UidLeftover(
          uidProduct: 'Product 1',
          uidWarehaus: 'Warehaus 1',
        ),
      );

      value;
    }

    // остатки товара "Product 1" по всем складам
    {
      final List<Leftover> list = storeRegistr
          .getList(
            UidLeftover(
              uidProduct: 'Product 1',
              uidWarehaus: null,
            ),
          )
          .toList();

      list;
    }

    // остатки всех товаров по складу "Warehaus 1"
    {
      final List<Leftover> list = storeRegistr
          .getList(
            UidLeftover(
              uidProduct: null,
              uidWarehaus: 'Warehaus 1',
            ),
          )
          .toList();

      list;
    }
  });
}
