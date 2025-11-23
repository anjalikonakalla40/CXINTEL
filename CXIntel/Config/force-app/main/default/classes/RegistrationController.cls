/**
 * @description       : 
 *           : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-28-2025
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class RegistrationController {
  @AuraEnabled
  public static Boolean checkUsername(String username) {
    List<Registration__c> existing = [SELECT Id FROM Registration__c WHERE User_Name__c = :username LIMIT 1];
    return !existing.isEmpty();
  }

  @AuraEnabled
  public static void registerUser(Registration__c reg) {
    if (reg == null) {
      throw new AuraHandledException('No registration data provided.');
    }
    insert reg;

    
  }
}