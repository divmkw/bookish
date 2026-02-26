import 'package:firebase_database/firebase_database.dart';
import 'package:bookish/models/user.dart';
import 'package:bookish/models/book.dart';

class FirebaseConfig {
  final DatabaseReference _database = FirebaseDatabase.instance.ref();

  Future<void> addUser(User user) async {
    await _database.child('users').push().set(user.toMap());
  }

  Future<void> addBook(Book book) async {
    await _database.child('books').push().set(book.toMap());
  }
}
