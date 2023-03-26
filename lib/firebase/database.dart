
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FirAuth {
  final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void signUp(String email, String pass, String name, String phone,
      Function onSuccess, Function(String) onRegisterError){
    //var credentials = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: pass);
     dynamic a = _fireBaseAuth
        .createUserWithEmailAndPassword(email: email, password: pass);
        a.then((user) {
          dynamic s =user;
          print(s.user.uid);
      _createUser(s.user.uid,/*user.toString(),a.user!.uid*/name, phone, onSuccess, onRegisterError);
    })
    .catchError((err) {
      print("err: " + err.toString());
      _onSignUpErr(err.code, onRegisterError);
    });
  }
  void signIn(String email, String pass, Function onSuccess,
      Function(String) onSignInError) {
    _fireBaseAuth
        .signInWithEmailAndPassword(email: email, password: pass)
        .then((user) {
      onSuccess();
    }).catchError((err) {
      print("err: " + err.toString());
      _onSignInErr(err.code, onSignInError);
      //onSignInError("Đăn nhập không thành công, hãy thử");
    });
  }

  _createUser(String userId, String name, String phone, Function onSuccess,
      Function(String) onRegisterError) {
    //final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    //var credentials = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    //return credentials.user?.uid;
    var user = Map<String, String>();
    user["name"] = name;
    user["phone"] = phone;
    //var user = {"name" : name,"phone" : phone};

    var ref = FirebaseDatabase.instance.ref().child("users");
    ref.child(userId).set(user).then((user/*vl*/) {
      print("on value: SUCCESSED");
      onSuccess();
    }).catchError((err) {
      print("err: " + err.toString());
      onRegisterError("Đăng khí không thành công, hãy thử");
    }).whenComplete(() {
      print("completed");
    });
  }

  ///
  void _onSignInErr(String code, Function(String) onSignInError) {
    print(code);
    switch (code) {
      case "invalid-email":
        onSignInError("Email không hợp lệ");
        break;
      case "user-disabled":
        onSignInError("Email vô hiệu hoá ");
        break;
      case "user-not-found":
        onSignInError("Email chưa được đăng kí");
        break;
      case "wrong-password":
        onSignInError("mật khẩu không đúng");
        break;
      default:
        onSignInError("đăng nhập không thành công,hãy thử");
        break;
    }
  }
//ERROR_INVALID_CREDENTIAL
  ///
  void _onSignUpErr(String code, Function(String) onRegisterError ) {
    print(code);
    switch (code) {
      case "operation-not-allowed":
        onRegisterError("Email không dùng");
        break;
      case "invalid-email":
        onRegisterError("Email không hợp lệ");
        break;
      case "email-already-in-use":
        onRegisterError("Email đã tồn tại");
        break;
      case "weak-password":
        onRegisterError("mật khẩu không đủ mạnh");
        break;
      default:
        onRegisterError("đăng kí không thành công,hãy thử");
        break;
    }
  }
  Future<void> signOut() async {
    print("Đăng xuất");
    return _fireBaseAuth.signOut();
  }
}
/*
UserCredential(
  additionalUserInfo: AdditionalUserInfo(
    isNewUser: true, profile: {}, providerId: password, username: null
  ),
  credential: null,
  user: User(
    displayName: null,
    email: hine@gmail.com,
    emailVerified: false,
    isAnonymous: false,
    metadata: UserMetadata(creationTime: 2023-02-07 11:38:05.807Z, lastSignInTime: 2023-02-07 11:38:05.807Z),
    phoneNumber: null,
    photoURL: null,
    providerData,
    [UserInfo(displayName: null, email: hine@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: hine@gmail.com)],
    refreshToken: ,
    tenantId: null,
    uid: 14M215diDHNlElH5zdRtHee9ING2
  )
)
*/