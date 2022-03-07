public class ProjectCretedClass {
    
    
    public static void ProjctClassCreation(list<Project__c> ProDraft){
        list<Project_Invoice__c> pIn = new list<Project_Invoice__c>();
        
        for(Project__c projectDraft : ProDraft){
            if(projectDraft.Stage__c != null && (projectDraft.Stage__c =='Initiated' || projectDraft.Stage__c =='Analysis'|| projectDraft.Stage__c =='Requirements Gathering'
                                                 || projectDraft.Stage__c =='Design' || projectDraft.Stage__c =='Development' || projectDraft.Stage__c =='Testing'
                                                || projectDraft.Stage__c =='Delivered'|| projectDraft.Stage__c =='UAT')){
                                                     Project_Invoice__c pInvoice = new Project_Invoice__c();
                                                     pInvoice.Name = projectDraft.Name +' '+ projectDraft.Stage__c;
                                                     pInvoice.Invoice_Date__c = system.today();
                                                     pInvoice.Project__c = projectDraft.Id;
                                                     pIn.add(pInvoice);
                                                 }
        }
        if(pIn.size()>0){
            insert pIn;
        }
    }   
}