import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:kuama_dart_domain/kuama_dart_domain.dart';
import 'package:kuama_dart_domain/src/shared/errors/failure.dart';

import '../entities/customer_entity.dart';
import '../repositories/customer_repository.dart';

class ReadCustomer extends UseCase<NoParams, CustomerEntity> {
  final CustomerRepository customerRepo = GetIt.I();

  @override
  Stream<Either<Failure, CustomerEntity>> tryCall(void params) {
    return customerRepo.read().map((customer) => Right(customer));
  }
}
