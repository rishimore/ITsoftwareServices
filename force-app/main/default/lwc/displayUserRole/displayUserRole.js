/* eslint-disable no-console */
import { LightningElement , wire, track} from 'lwc';

//import method which should be used from Controller
import getUserRoles from '@salesforce/apex/UserRoleController.getUserRoles';

let i=0;
export default class DisplayUserRole extends LightningElement {

    @track items = []; //this will hold key, value pair
    @track value = ''; //initialize combo box value

    @track chosenValue = '';

    @wire(getUserRoles)
    wiredUserRoles({ error, data }) {
        if (data) {

            //create array with elements which has been retrieved controller
            //here value will be Id and label of combobox will be Name
            for(i=0; i<data.length; i++)  {
                this.items = [...this.items ,{value: data[i].Id , label: data[i].Name} ];                                   
            }                
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.contacts = undefined;
        }
    }

    //gettter to return items which is mapped with options attribute
    get roleOptions() {
        return this.items;
    }

    handleChange(event) {
        // Get the string of the "value" attribute on the selected option
        const selectedOption = event.detail.value;
        console.log('selected value=' + selectedOption);
        this.chosenValue = selectedOption;
    }

    //this value will be shown as selected value of combobox item
    get selectedValue(){
        return this.chosenValue;
    }
}