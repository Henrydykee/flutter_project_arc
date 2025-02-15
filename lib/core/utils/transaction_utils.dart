// import 'package:newproject_app/features/transaction/data/model/transaction_response_model.dart';
//
// class TransactionUtils {
//
//
//
//
//   // account-funding - accountName
//   // bank-transfer - accountName
//   // card-charge - cardAcceptorNameLocation
//   // card-charge-reversal - cardAcceptorNameLocation
//
//
//   String getTransactionTitle(String type,TransactionResponseModel? transactionResponseModel) {
//     switch (type) {
//       case "transactions.card-charge":
//         return "${transactionResponseModel?.data?.cardAcceptorNameLocation.toString()}";
//       case "account.bank-transfer":
//         return "${transactionResponseModel?.data?.accountName ??"Bank transfer"}";
//       case "Card-order":
//         return "Card order";
//       case "transactions.account-funding":
//         return "${transactionResponseModel?.data?.accountName ??"Account funding"}";
//       case "user.welcome":
//         return "Welcome to newproject";
//       case "confirm.email.token":
//         return "Email Confirmation";
//       case "account-funding":
//         return "${transactionResponseModel?.data?.accountName ?? "Account funding"}";
//       case "collection-funding":
//         return "Collection Funding";
//       case "card-order":
//         return "Card Order";
//       case "bank-transfer":
//         return "${transactionResponseModel?.data?.accountName ?? "Bank Transfer"}";
//       case "account-transfer":
//         return "Account Transfer";
//       case "card-charge-reversal":
//         return "${transactionResponseModel?.data?.cardAcceptorNameLocation.toString() ?? "Card Charge Reversal"}";
//       case "card-funding":
//         return "Card Funding";
//       case "card-charge":
//         return "${transactionResponseModel?.data?.cardAcceptorNameLocation.toString() ?? "Card Charge"}";
//       case "bill-payment":
//         return "Bill Payment";
//       case "reversal":
//         return "Reversal";
//       case "qr-code-payment":
//         return "Qr Code Payment";
//       case "qr-code-funding":
//         return "Qr Code Funding";
//       case "magic-cash-funding":
//         return "Magic Cash Funding";
//       case "magic-cash-payment":
//         return "Magic Cash Payment";
//       case "cards.order.pending-confirmation":
//         return "Card order";
//       case "transactions.card-order":
//         return "Card order";
//       default:
//         return type;;
//     }
//   }
//
//   String getNotificationTransactionTitle(String type) {
//     switch (type) {
//       case "transactions.card-charge":
//         return "Card charge";
//       case "account.bank-transfer":
//         return "Bank transfer";
//       case "Card-order":
//         return "Card order";
//       case "transactions.account-funding":
//         return "Account funding";
//       case "user.welcome":
//         return "Welcome to newproject";
//       case "confirm.email.token":
//         return "Email Confirmation";
//       case "account-funding":
//         return "Account Funding";
//       case "collection-funding":
//         return "Collection Funding";
//       case "card-order":
//         return "Card Order";
//       case "bank-transfer":
//         return "Bank Transfer";
//       case "account-transfer":
//         return "Account Transfer";
//       case "card-charge-reversal":
//         return "Card Charge Reversal";
//       case "card-funding":
//         return "Card Funding";
//       case "card-charge":
//         return "Card Charge";
//       case "bill-payment":
//         return "Bill Payment";
//       case "reversal":
//         return "Reversal";
//       case "qr-code-payment":
//         return "Qr Code Payment";
//       case "qr-code-funding":
//         return "Qr Code Funding";
//       case "magic-cash-funding":
//         return "Magic Cash Funding";
//       case "magic-cash-payment":
//         return "Magic Cash Payment";
//       case "cards.order.pending-confirmation":
//         return "Card order";
//       case "transactions.card-order":
//         return "Card order";
//       case "cards.linked":
//         return "Your newproject card has been linked";
//       default:
//         return type;;
//     }
//   }
// }
