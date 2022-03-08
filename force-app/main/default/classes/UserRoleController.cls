public with sharing class UserRoleController {

    @AuraEnabled (cacheable=true)
    public static List<UserRole> getUserRoles(){
        return [SELECT Id, Name FROM UserRole];
    }
}