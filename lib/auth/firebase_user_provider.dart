import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class CalHacksFirebaseUser {
  CalHacksFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CalHacksFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CalHacksFirebaseUser> calHacksFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CalHacksFirebaseUser>(
      (user) {
        currentUser = CalHacksFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
