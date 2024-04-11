import '../models/user.dart';

abstract class UserRepo {
  
  Future<User> getUserById(int userId);
  Future<List<User>> getUsers();
  Future<void> saveUser(User user);
  Future<void> deleteUser(int userId);
  
}
