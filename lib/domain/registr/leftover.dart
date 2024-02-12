import 'package:dart_application_28/domain/registr/registr.dart';

class Leftover extends RegistrEntity<UidLeftover> {
  final String uidWarehaus;
  final String uidProduct;

  Leftover({
    required this.uidWarehaus,
    required this.uidProduct,
  });

  @override
  UidLeftover get uid => UidLeftover(
        uidWarehaus: uidWarehaus,
        uidProduct: uidProduct,
      );

  @override
  Iterable<UidLeftover> get uids => [
        UidLeftover(
          uidWarehaus: null,
          uidProduct: uidProduct,
        ),
        UidLeftover(
          uidWarehaus: uidWarehaus,
          uidProduct: null,
        ),
      ];
}

class UidLeftover extends UidRegistr {
  final String? uidWarehaus;
  final String? uidProduct;

  const UidLeftover({
    required this.uidWarehaus,
    required this.uidProduct,
  });

  @override
  List<Object?> get props => [
        uidWarehaus,
        uidProduct,
      ];
}
