public with sharing class getRecordDataController {
    @AuraEnabled(cacheable=true)
    public static List<Project__C> getAllProjects() {
        System.debug([
            SELECT Id, Name,Opportunity__c,Project_Start_Date__c, Project_End_Date__c 
            FROM Project__c
            WITH SECURITY_ENFORCED
        ]);
        return [
                SELECT Id, Name,Opportunity__c,Project_Start_Date__c, Project_End_Date__c 
                FROM Project__c
                WITH SECURITY_ENFORCED
               ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Project_Skill__c> getSkillListByProjectId(Id projectId){
        System.debug([
            SELECT Skill_Set__c, Employee__c, Project__c, Id, Name 
            FROM Project_Skill__c
            WHERE Project__c =: projectId
            WITH SECURITY_ENFORCED
        ]);
        return [
                SELECT Skill_Set__c, Employee__c, Project__c, Id, Name 
                FROM Project_Skill__c
                WHERE Project__c =: projectId
                WITH SECURITY_ENFORCED
               ];
    }
}
