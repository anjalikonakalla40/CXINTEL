/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-24-2025
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class LoginController {
    @AuraEnabled
    public static Boolean authenticateUser(String username, String hashedPassword) {
        // Query only by username
        List<Registration__c> users = [
            SELECT Id, Password__c
            FROM Registration__c
            WHERE User_Name__c = :username
            LIMIT 1
        ];

        // if (!users.isEmpty()) {
        //     Registration__c user = users[0];
        //     if (user.Password__c == hashedPassword) {
        //         return true;
        //     }
        // }
        // return false;
         if (!users.isEmpty() && users[0].Password__c == hashedPassword) {
     return true;
 }
 return false;
    }
}
