import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AplivitFirebaseUser {
  AplivitFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AplivitFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AplivitFirebaseUser> aplivitFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AplivitFirebaseUser>(
        (user) => currentUser = AplivitFirebaseUser(user));
