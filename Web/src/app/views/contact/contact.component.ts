import { Component, ViewChild, ElementRef } from '@angular/core';
import { AngularFirestore, AngularFirestoreCollection } from '@angular/fire/compat/firestore';
import { Observable } from 'rxjs';

export interface Contact {
  title : String,
  description : String
}

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.less']
})
export class ContactComponent {
  missingTitle : Boolean = false;
  missingDesc : Boolean = false;
  isOk : Boolean = false;
  @ViewChild('title') title: ElementRef | undefined
  @ViewChild('desc') desc: ElementRef | undefined
  private contactCollection : AngularFirestoreCollection<Contact> | undefined;
  private afs!: AngularFirestore
  
  constructor(){
  }

  ngOnInit(): void {
  }

  post() {
    this.contactCollection = this.afs.collection<Contact>('contact');

    const title = this.title?.nativeElement.value;
    const descript = this.title?.nativeElement.value;
    const date = new Date
    const id = this.afs.createId();
    const contact : Contact = {title: title, description: descript };
    this.contactCollection.doc(id).set(contact)
  }
}