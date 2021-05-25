import 'package:kuama_dart_domain/kuama_dart_domain.dart';

import '../entities/customer_entity.dart';

abstract class CustomerRepository implements Repository {
  CustomerRepository._();

  Stream<CustomerEntity> read();
}
