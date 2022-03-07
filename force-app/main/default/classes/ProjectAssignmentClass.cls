public with sharing class ProjectAssignmentClass {
    @AuraEnabled(cacheable=true)
    public static List<Skill_Set__c> getProjectAssign() {
        return [
            Select Name, (Select Name, Employee__c from Employee_Skills__r), (Select Name, Project__c from Project_Skills__r) from Skill_Set__c
        ];
    }
}
