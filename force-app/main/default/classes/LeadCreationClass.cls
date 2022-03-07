public class LeadCreationClass 
{
    public static void CreationLead(list<lead>RevanueEnter){
        for(lead leadList: RevanueEnter){
             if(leadList.AnnualRevenue == null){
                leadList.Rating = null;
            }else
            if(leadList.AnnualRevenue <=10000){
                leadList.Rating = 'cold';
            }else if(leadList.AnnualRevenue >= 10000 && leadList.AnnualRevenue <= 50000 ){
                leadList.Rating = 'Warm';
            }else{
                leadList.Rating ='Hot';
            }
        }
    }
    public static void RevanueUpdated(list<lead>RevanueUpdate,map<id,lead>oldMap){
        for(lead ld: RevanueUpdate){
            if(ld.AnnualRevenue != null && ld.AnnualRevenue <=10000){
                ld.Rating = 'cold';
            }
            else if(ld.AnnualRevenue != null && ld.AnnualRevenue!=oldMap.get(ld.id).AnnualRevenue){
                if(ld.AnnualRevenue >= 10000 && ld.AnnualRevenue <= 50000 ){
                    ld.Rating = 'Warm';
                }else
                {
                    ld.Rating ='Hot';
                }
            }
        }
    }
}