import 'package:estructurapp/src/models/users.dart';
import 'package:http/http.dart' show Client;

class API{
  static const baseUrl = 'http://jsonplaceholder.typicode.com/users';

  final Client _client = Client();

  Future<List<Users>> getUsers() async {
    List<Users> photosList;

    final response = await _client.get(baseUrl);
    photosList = usersFromJson(response.body);

    return photosList;
  }
}