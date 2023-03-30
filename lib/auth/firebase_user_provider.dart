import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MoulaFirebaseUser {
  MoulaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MoulaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MoulaFirebaseUser> moulaFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MoulaFirebaseUser>(
      (user) {
        currentUser = MoulaFirebaseUser(user);
        return currentUser!;
      },
    );
