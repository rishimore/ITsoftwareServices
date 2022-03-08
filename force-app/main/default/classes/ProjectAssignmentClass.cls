public with sharing class ProjectAssignmentClass {
    @AuraEnabled (cacheable=true)
    public static List<Project__C> getProjects(){
        return [SELECT Id, Name FROM Project__C Where Stage__C = 'Draft'];
    }
}
