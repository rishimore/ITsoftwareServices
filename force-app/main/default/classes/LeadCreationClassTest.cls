@IsTest
public class LeadCreationClassTest {
	@IsTest
    public static void CreationLead(){
        lead leadNew = new lead();
        leadNew.AnnualRevenue = null;
        leadNew.Rating = null;
        
        
        system.assertEquals(null, leadNew.Rating = null);
        
        lead leadNew1 = new lead();
        leadNew1.AnnualRevenue = 2000;
        leadNew1.Rating = 'Cold';
        
        
        system.assertEquals('Cold', leadNew1.Rating = 'cold');
 		  
       	
        
    }
}