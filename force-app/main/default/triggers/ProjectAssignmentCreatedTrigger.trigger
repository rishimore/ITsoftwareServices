trigger ProjectAssignmentCreatedTrigger on Skill_Set__c (after insert, after update) {
    
    list<Skill_Set__c> skiSet =[Select name,(Select name from project_skills__r) From Skill_Set__c];
    
    for(Skill_Set__c sk: skiSet){
        list<project_skill__c> pSkill =sk.project_skills__r;
        for(project_skill__c ps: pSkill){
          
        } 
    }
}