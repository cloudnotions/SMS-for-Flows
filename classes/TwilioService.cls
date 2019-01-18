global with sharing class TwilioService {
    
    /* Method: sendTwilioMessage
     * Params: List<TwilioMessage>
     * Return: List<TwilioMessageResponse>
     * Description: Invocable Method to send SMS messages via Twilio
     */
    @InvocableMethod
    global static List<TwilioMessageResponse>  sendTwilioMessage(List<TwilioMessage> twilioMessages) {
        List<TwilioMessageResponse> returnStatuses = new List<TwilioMessageResponse>();
        for (TwilioMessage msg : twilioMessages) {
            TwilioMessageResponse status = TwilioHttp.twilioMessage(msg);
            returnStatuses.add(status);
        }
        return returnStatuses;

    }
    
}