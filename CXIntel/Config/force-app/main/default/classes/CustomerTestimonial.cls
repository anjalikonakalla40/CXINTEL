/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-23-2025
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
// File: TestimonialController.cls
public with sharing class TestimonialController {
    @AuraEnabled
    public static void saveTestimonial(Map<String, Object> testimonialData) {
        Customer_Testimonial_c newRecord = new Customer_Testimonial_c();

        newRecord.Name = (String)testimonialData.get('Name');
        newRecord.Email_c = (String)testimonialData.get('Email_c');
        newRecord.Rating_c = (String)testimonialData.get('Rating_c');
        newRecord.Recommend_to_others_c = (String)testimonialData.get('Recommend_to_others_c');
        newRecord.Service_Wished_we_offered_c = (String)testimonialData.get('Service_Wished_we_offered_c');
        newRecord.What_You_Like_The_most_c = (String)testimonialData.get('What_You_Like_The_most_c');

        insert newRecord;
    }
}
