import { LightningElement, wire, track } from 'lwc';
import getAllProjects from '@salesforce/apex/getRecordDataController.getAllProjects';
import getSkillListByProjectId from '@salesforce/apex/getRecordDataController.getSkillListByProjectId';

export default class EmployeeAvailabilityAssignment extends LightningElement {

    @track empId = '';
    @track tempId = '';
    @track projectId = '';
    @track skillId = '';

    projectList;
    wired_ProjectList;
    skillList = [];
    wired_skillList;
    employeeList;
    wired_employeeList;

    wired_results;

    @track skillSelected = false;
    @track projectSelected = false;
    @track employeeSelected = false;

    @wire(getAllProjects)
    wired_getAllProjects({ error, data }) {
        this.projectList = [];
        this.wired_ProjectList = data;
        if (data) {
            this.projectList = data.map((project) => ({
                value: project.Id,
                label: project.Name
            }));
        } else if (error) {
            this.error = error;
        }
    }

    @wire(getSkillListByProjectId, { projectId: "$projectId" })
    wired_getSkillListByProjectId({ error, data }) {
        this.skillList = [];
        this.wired_skillList = data;
        if (data && this.projectSelected) {
            this.skillList = data.map((skill) => ({
                value: skill.Id,
                label: skill.Name
            }))
        } else {
            this.error = error;
        }
    }

}