import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.less']
})
export class ContactComponent implements OnInit {

  missingTitle : Boolean = false;
  missingDesc : Boolean = false;
  isOk : Boolean = false;
  @ViewChild('title') title: ElementRef | undefined
  @ViewChild('desc') desc: ElementRef | undefined

  constructor(){
  }

  ngOnInit(): void {
  }

  post() {
    const title = this.title?.nativeElement.value;
    const desc = this.title?.nativeElement.value;
    const date = new Date

    // if (title && desc) {
    //   this.isOk = true;
    // }
    // else {
    //   this.isOk = false;
    // }
  }
}
