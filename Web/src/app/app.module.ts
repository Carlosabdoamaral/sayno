import {MatTabsModule} from '@angular/material/tabs';
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {MatInputModule} from '@angular/material/input';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './components/header/header.component';
import { FooterComponent } from './components/footer/footer.component';
import { IndexbannerComponent } from './components/banners/indexbanner/indexbanner.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {MatButtonModule} from '@angular/material/button';
import { DownloadComponent } from './components/download/download.component';
import { ContactComponent } from './views/contact/contact.component';
import { LoginComponent } from './views/login/login.component';
import { IndexComponent } from './views/index/index.component';
import { ContactbannerComponent } from './components/banners/contactbanner/contactbanner.component';
import { AboutComponent } from './components/about/about.component';
import { DownloadViewComponent } from './views/download-view/download-view.component';
import { DownloadbannerComponent } from './components/banners/downloadbanner/downloadbanner.component';
import { AboutViewComponent } from './views/about-view/about-view.component';
import { AboutbannerComponent } from './components/banners/aboutbanner/aboutbanner.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    IndexbannerComponent,
    DownloadComponent,
    ContactComponent,
    LoginComponent,
    IndexComponent,
    ContactbannerComponent,
    AboutComponent,
    DownloadViewComponent,
    DownloadbannerComponent,
    AboutViewComponent,
    AboutbannerComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    MatTabsModule,
    BrowserAnimationsModule,
    MatButtonModule,
    MatInputModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
