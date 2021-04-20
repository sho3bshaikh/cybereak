import { NgModule } from '@angular/core';
import { CommonModule, } from '@angular/common';
import { BrowserModule  } from '@angular/platform-browser';
import { Routes, RouterModule } from '@angular/router';

import { HomeComponent } from './home/home.component';

import { CourseviewComponent } from './courseview/courseview.component';
import { TagviewComponent } from './tagview/tagview.component';
import { AboutComponent } from './about/about.component';
import { SearchviewComponent } from './searchview/searchview.component';


const routes: Routes =[
    { path: '',             component: HomeComponent },
    {path:'about', component:AboutComponent},
    { path:  'course/:slug', component:  CourseviewComponent},
    { path:  'tags/:tag', component:  TagviewComponent},
    { path:  'search/:query', component:  SearchviewComponent},
    { path: 'home', redirectTo: '', pathMatch: 'full' }
];

@NgModule({
  imports: [
    CommonModule,
    BrowserModule,
    RouterModule.forRoot(routes,{
      useHash: true
    })
  ],
  exports: [
  ],
})
export class AppRoutingModule { }
