import 'package:cravv_0_1/src/models/customer.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class AuthenticationService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  // Create a Customer object based on FirebaseUser
  Customer? _customerFromFirebaseUser(auth.User? customer) {
    if (customer == null) {
      return null;
    }
    return Customer(userId: customer.uid, email: customer.email);
  }

  // Authentication change Customer stream
  Stream<Customer?>? get customer {
    return _firebaseAuth.authStateChanges().map(_customerFromFirebaseUser);
  }

  // Log in anonyomously

  // Sign in/Log in with email and password
  Future<Customer?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _customerFromFirebaseUser(credential.user);
  }

  // Sign in/Log in with Google

  // Sign up/Register  with email and password
  Future<Customer?> createWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _customerFromFirebaseUser(credential.user);
  }

  // Sign out/Log out
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
