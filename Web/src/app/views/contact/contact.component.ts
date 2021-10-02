import { Component, OnInit, ViewChild } from '@angular/core';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.less']
})
export class ContactComponent implements OnInit {

  missingTitle : Boolean = true;
  missingDesc : Boolean = true;
  isOk : Boolean = true;
  
  constructor(){
  }

  ngOnInit(): void {
  }

  post() {
  }
}
