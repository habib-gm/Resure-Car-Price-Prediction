import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/feature/prediction/data/data_provider.dart/data_provider.dart';
import 'package:frontend/feature/prediction/data/repository/repository.dart';
import 'package:frontend/feature/prediction/domain/bloc/prediction_bloc.dart';
import 'package:frontend/feature/prediction/presentation/input_page.dart';
import 'package:frontend/feature/prediction/presentation/pop_up_page.dart';
import 'package:frontend/feature/prediction/presentation/resure_page.dart';
import 'package:frontend/feature/prediction/presentation/starter1.dart';

import 'feature/prediction/data/data_provider.dart/Rating_data_provider.dart';
import 'feature/prediction/data/repository/rating.dart';
import 'feature/prediction/data/repository/rating.dart';
import 'feature/prediction/domain/bloc/RatingBloc/rating_bloc.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  final PredictionRepository predictionRepository =
      PredictionRepository(PredictionDataProvider());
  final RatingRepository ratingRepository =
      RatingRepository(RatingDataProvider());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PredictionBloc>(
            create: (context) =>
                PredictionBloc(predictionRepository: predictionRepository)),
        BlocProvider<RatingBloc>(
            create: (context) =>
                RatingBloc(ratingRepository: ratingRepository)),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => const ResurePage(),
        },
        home: SafeArea(child: Starter1()),
      ),
    );
  }
}
