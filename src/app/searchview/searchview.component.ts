import { Component, OnInit } from '@angular/core';
import { AngularFirestore } from '@angular/fire/firestore';
import { AngularFireStorage } from '@angular/fire/storage';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-searchview',
  templateUrl: './searchview.component.html',
  styleUrls: ['./searchview.component.css']
})
export class SearchviewComponent implements OnInit {

  constructor(
    private afs:AngularFirestore,
    private route: ActivatedRoute,
    private storage:AngularFireStorage
  ) { }
  protected courses:Array<any>=[];
  last:any;
  msg:any;
  query:any;
  allloaded:boolean=false;
  loading:boolean=true;
  loadingmore:boolean=false;
 public next(lastsnap){
   this.loadingmore=true;
   this.afs.collection("course").ref.where("keyword","array-contains",this.query).limit(15).startAfter(this.last).onSnapshot(
     (snap)=>{
       if(snap.empty){
        this.allloaded=true;
        
        console.log("Reached End")
       }
       else{
        this.last=snap.docs[snap.docs.length-1]
        console.log(this.last=snap.docs[snap.docs.length-1])
        console.log(this.courses)
        snap.docs.forEach(element => {
          this.courses.push(element.data());
    
        });
        this.loadingmore=false;
        console.log(this.courses)
       }
  })
  
  }
  ngOnInit(): void {

    this.route.paramMap.subscribe(params => {
      this.query=params.get('query').toLowerCase().split(" ");
  
      });
      this.afs.collection("course").ref.where("keyword","array-contains-any",this.query).limit(15).onSnapshot((snap)=>{
      this.last=snap.docs[snap.docs.length-1]

      snap.docs.forEach(element => {
        this.courses.push(element.data());
        
      });
      this.courses.forEach(element=>{
        this.storage.ref(element.thumbnail).getDownloadURL().toPromise().then((url)=>{
          element.image= url
         });
      })
      this.loading=false;

    })
  }

}

