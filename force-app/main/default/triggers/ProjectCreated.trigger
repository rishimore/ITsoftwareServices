trigger ProjectCreated on Project__c (after insert,after update) {
    
    if(trigger.IsAfter){
        if(trigger.IsUpdate){
            ProjectCretedClass.ProjctClassCreation(trigger.new);
        }
    }
}