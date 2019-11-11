import { LightningElement, wire, track } from 'lwc';
import ursusResources from '@salesforce/resourceUrl/ursus_park';
import getAllBears from '@salesforce/apex/BearController.getAllBears';

export default class bearList  extends LightningElement {
	@track bears;
	@track error;
	//@wire(getAllBears) contacts;
  ///* 
  appResources = {
	bearSilhouette: ursusResources,
};
   @wire(getAllBears)
    wiredContacts({ error, data }) {
        if (data) {
            this.bears = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.bears = undefined;
        }
    }//*/
}