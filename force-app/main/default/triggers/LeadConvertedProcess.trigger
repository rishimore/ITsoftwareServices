trigger LeadConvertedProcess on Lead (before insert,before update,after insert) {
    
    if(trigger.IsBefore){
        if(Trigger.IsInsert){
            LeadCreationClass.CreationLead(Trigger.new);
            
        }
        if(Trigger.IsUpdate){
            LeadCreationClass.RevanueUpdated(Trigger.new,trigger.oldMap);
        }
    }
}