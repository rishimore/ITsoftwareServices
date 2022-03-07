import { LightningElement,wire } from 'lwc';
import getProjectAssign from '@salesforce/apex/ProjectAssignmentClass.getProjectAssign';

export default class ProjectAssignment extends LightningElement {
    
 
    @wire(getProjectAssign) projectAssigns;
    
}