import { AboutViewComponent } from './views/about-view/about-view.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ContactComponent } from './views/contact/contact.component';
import { DownloadViewComponent } from './views/download-view/download-view.component';
import { IndexComponent } from './views/index/index.component';

const routes: Routes = [
  { path: '', component: IndexComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'download', component: DownloadViewComponent },
  { path: 'about', component: AboutViewComponent },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
