
import 'package:clean_architecture/core/error/failure.dart';
import 'package:clean_architecture/core/usecases/usecases.dart';
import 'package:clean_architecture/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements Usecases<NumberTrivia,NoParams>{

  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);
  @override
  Future<Either<Failure, NumberTrivia>?>? call(NoParams params) async{
   return await repository.getRandomNumberTrivia();
  }

}


