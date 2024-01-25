import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);

  String? searchValue;

  importSearch(String value) {
    searchValue = value;
    emit(SearchValueChangedSuccessfully());
  }
}
