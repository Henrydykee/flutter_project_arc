// import 'dart:async';
//
//
// abstract class OnboardingLocalDataSource extends LocalDataSource {
//   Future<UserModel?> getUser();
//   Future deleteUser();
// }
//
// class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
//   AuthenticationDao authenticationDao;
//
//   OnboardingLocalDataSourceImpl(this.authenticationDao);
//   @override
//   StreamController get dataStreamController => throw UnimplementedError();
//
//   @override
//   void dispose() {}
//
//   @override
//   Future<UserModel?> getUser() async {
//     User user = await authenticationDao.getAll();
//     if (user != null) {
//       return userToModel(user);
//     }
//   }
//
//   UserModel userToModel(User user) {
//     return UserModel(
//         lastName: user.lastName,
//        username: inject<InMemory>().username,
//         firstName: user.firstName,
//         email: user.email,
//         hasPin: user.hasPin,
//         userType: user.type,
//         phoneNumber: user.phoneNumber,
//         verified: user.verified,
//         two_factor_enabled: inject<InMemory>().two_factor_enabled,
//         homeAddress: inject<InMemory>().addressParams?.homeAddress,
//         image: user.image,
//         self_activated: inject<InMemory>().selfActivated,
//         the_peer_refrence: inject<InMemory>().the_peer_refrence,
//         city: inject<InMemory>().addressParams?.city,
//         country: inject<InMemory>().addressParams?.country,
//         state: inject<InMemory>().addressParams?.state,
//         kyc: KycModel(
//             uploadedSelfie: user.uploadedSelfie,
//             verifiedEmail: user.verifiedEmail,
//             verifiedBank: user.verifiedBank,
//             uploadedAddress: inject<InMemory>().uploadedAddress,
//             terms: inject<InMemory>().terms,
//             uploadedDoc: user.uploadedDoc),
//         activated: user.activated,
//         userId: user.userId);
//   }
//
//   @override
//   Future deleteUser() async {
//     return await authenticationDao.deleteUser();
//   }
// }
