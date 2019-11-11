public with sharing class BearController{
     
    @AuraEnabled(cacheable=true)
    public static List<Bear__c> getAllBears() {
        return [SELECT Id, OwnerId, Name, Sex__c, Age__c, Height__c, Weight__c FROM Bear__c];
    }
   /* @AuraEnabled(cacheable=true)
    public static Bear__c searchBears(String searchTerm) {
        String test = '%'+searchTerm+'%';
        System.debug('testidggfg'+  [Select Id , Name,Sex__c,Age__c,Height__c,Weight__c  from Bear__c]);
        return  [Select Id , Name,Sex__c,Age__c,Height__c,Weight__c  from Bear__c where Name =: test];
    }
    */
    
}
