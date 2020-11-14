import 'package:flutter_sms_inbox/flutter_sms_inbox.dart';

class SMSReader
{
   List<SmsMessage> messages;

  Future<List<SmsMessage>> readSMS()
  async {
    SmsQuery query = new SmsQuery();
    return query.querySms(address: "EmiratesNBD");
  }
}