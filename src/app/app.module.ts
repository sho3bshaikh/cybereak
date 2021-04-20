import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule,ReactiveFormsModule } from '@angular/forms';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { RouterModule } from '@angular/router';
import { AppRoutingModule } from './app.routing';

import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { NavbarComponent } from './shared/navbar/navbar.component';
import { FooterComponent } from './shared/footer/footer.component';
import {LocationStrategy, Location, PathLocationStrategy} from '@angular/common';
import { HomeModule } from './home/home.module';

// 1. Import the libs you need
import { AngularFireModule } from '@angular/fire';
import { AngularFirestoreModule } from '@angular/fire/firestore';
import { AngularFireStorageModule } from '@angular/fire/storage';
import { AngularFireAuthModule } from '@angular/fire/auth';
import { CourseviewComponent } from './courseview/courseview.component';
import { LinkifyPipe } from './linkify.pipe';
import { TagviewComponent } from './tagview/tagview.component';
import { SafeurlPipe } from './safeurl.pipe';
import { LoadingComponent } from './loading/loading.component';
import { AboutComponent } from './about/about.component';
import { SearchviewComponent } from './searchview/searchview.component';
import { environment } from 'src/environments/environment';

@NgModule({
  declarations: [
    AppComponent,

    NavbarComponent,
    FooterComponent,

    CourseviewComponent,

    LinkifyPipe,

    TagviewComponent,

    SafeurlPipe,

    LoadingComponent,

    AboutComponent,

    SearchviewComponent,


  ],
  imports: [
    BrowserModule,
    NgbModule,
            // 3. Initialize
            AngularFireModule.initializeApp(environment.firebase),
            AngularFirestoreModule, // firestore
            AngularFireAuthModule, // auth
            AngularFireStorageModule ,// storage
    FormsModule,
    ReactiveFormsModule,
    RouterModule,
    AppRoutingModule,
    HomeModule,
  ],
  providers: [Location, {provide: LocationStrategy, useClass: PathLocationStrategy}],
  bootstrap: [AppComponent]
})
export class AppModule { }
