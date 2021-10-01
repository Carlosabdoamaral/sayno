import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.less']
})
export class HeaderComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
    this.changeActive()
  }

  changeActive() {
    const page = window.location.href;
    const homeLink = document.getElementById('home');
    const aboutLink = document.getElementById('about');
    const downloadLink = document.getElementById('download');
    const contactLink = document.getElementById('contact');

    if (page.includes('/contact')) {
      contactLink?.classList.add('active')
    }
    if (page.includes('/#')) {
      homeLink?.classList.add('active')
    }
    if (page.includes('/contact')) {
      contactLink?.classList.add('active')
    }
    if (page.includes('/contact')) {
      contactLink?.classList.add('active')
    }
  }

}
