import { Component, OnInit } from '@angular/core';
import { AngularFirestore } from '@angular/fire/firestore';
import { AngularFireStorage } from '@angular/fire/storage';
import { map } from 'rxjs/operators';

@Component({
    selector: 'app-home',
    templateUrl: './home.component.html',
    styleUrls: ['./home.component.scss']
})

export class HomeComponent implements OnInit {

  constructor(
    private afs:AngularFirestore,
    private storage:AngularFireStorage
  ) { }
  private courses:Array<any>=[];
  last:any;
  loading:boolean=true;
  loadingmore:boolean=false;
 public next(lastsnap){
   this.loadingmore=true;
    this.afs.collection("course").ref.orderBy("createAt")
    .startAfter(lastsnap)
    .limit(12).onSnapshot((snap)=>{
      this.last=snap.docs[snap.docs.length-1]
      snap.docs.forEach(element => {
        this.courses.push(element.data());

      });
      for (let index = 12; index > 0; index--) {
        console.log(index)
        this.storage.ref(this.courses[this.courses.length-index].thumbnail).getDownloadURL().toPromise().then((url)=>{
          this.courses[this.courses.length-index].image= url
         });
      }
      this.loadingmore=false;
    });
  
  }
  ngOnInit(): void {
    this.afs.collection("course").ref.orderBy("createAt").limit(12).onSnapshot((snap)=>{
      this.last=snap.docs[snap.docs.length-1]
      console.log(this.last=snap.docs[snap.docs.length-1])
      console.log(this.courses)
      snap.docs.forEach(element => {
        this.courses.push(element.data());

      });
      this.courses.forEach(element => {
        this.storage.ref(element.thumbnail).getDownloadURL().toPromise().then((url)=>{
          element.image= url
         });
      });
      this.loading=false;
      console.log(this.courses)
    })
  }

}
