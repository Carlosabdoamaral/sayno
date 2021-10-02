import { Component, OnInit, ViewChild } from '@angular/core';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.less']
})
export class ContactComponent implements OnInit {

  missingTitle : Boolean = false;
  missingDesc : Boolean = false;
  isOk : Boolean = false;
  
  constructor(){
  }

  ngOnInit(): void {
  }

  post() {
  }
}
