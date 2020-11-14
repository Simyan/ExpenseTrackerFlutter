import 'package:flutter_sms_inbox/flutter_sms_inbox.dart';
import 'package:expense_tracker/models/transaction.dart';

class SMSParser{
  //Purchase of AED 6.19 with Debit Card ending 2932 at W MART SUPERMARKET MARI, DUBAI. Avl Balance is AED 1,244.68.
  final Set<String> purchaseIdentifiers = {'Purchase', 'of', 'with', 'Debit', 'Card', 'ending', 'Avl', 'Balance', 'is', 'AED'};

  bool _isPurchase(List<String> tokens){
    var tokensSet = tokens.toSet();
    return purchaseIdentifiers.difference(tokensSet).isEmpty;
  }

  double _getAmount(List<String> tokens) => double.tryParse(tokens.skip(3).take(1).single.replaceAll(',', ''));
  double _getBalance(List<String> tokens) => double.tryParse(tokens.last.split('.')[0].replaceAll(',', ''));
  String _getStore(List<String> tokens) => tokens.skip(10).take(tokens.length - 15).join('');

  void parseTransactions(List<SmsMessage> messages){
    List<Transaction> transactions = new List<Transaction>();
    messages.forEach((element) {
      String body = element.body;
       var tokens = body.split(' ');
       if(_isPurchase(tokens))
         {
            var amount = _getAmount(tokens);
            var balance = _getBalance(tokens);
            var store = _getStore(tokens);
            Transaction transaction = new Transaction(store, amount, balance, element.dateSent);
            transactions.add(transaction);
         }
    });
  }


}