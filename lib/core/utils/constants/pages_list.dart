import 'package:graduation_project/features/chat/presentation/views/chat_view.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:graduation_project/features/search/presentation/views/search_view_body.dart';
import 'package:graduation_project/features/settings/presentation/views/settings_view.dart';

List applicationPages({
  required ProfileModel profileModel,
}) =>
    [
      const HomeViewBody(),
      const SearchViewBody(),
      const ChatViewBody(),
      SettingsViewBody(
        profileModel: profileModel,
      ),
    ];
