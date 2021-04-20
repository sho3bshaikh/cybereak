import { Component, OnInit } from '@angular/core';
import { AngularFirestore } from '@angular/fire/firestore';
import { AngularFireStorage } from '@angular/fire/storage';
import { ActivatedRoute } from '@angular/router';
import { map } from 'rxjs/operators';
import { PeerTubePlayer } from '@peertube/embed-api'
import { DomSanitizer, SafeResourceUrl } from '@angular/platform-browser';
@Component({
  selector: 'app-courseview',
  templateUrl: './courseview.component.html',
  styleUrls: ['./courseview.component.css']
})
export class CourseviewComponent implements OnInit {
  slug:String;
  courses: any;
  player:any;
  time:any;
  loading:boolean=true;
isMobile: boolean;
  constructor(public sanitizer: DomSanitizer,private route: ActivatedRoute, private firstore:AngularFirestore,private storage:AngularFireStorage) { 
  }
  timeplay(number){
    this.time=number
  }
  
  ngOnInit(): void {
    if(window.innerWidth > 768 ){
      this.isMobile=false
    }
    else{
      this.isMobile=true
    }
    this.route.paramMap.subscribe(params => {
      this.slug=params.get('slug');
      console.log(params.get('slug'))
      });

      const query = this.firstore.collection("course",ref =>ref.where('slug','==',this.slug));
      query.snapshotChanges().pipe(
        map(changes =>
          changes.map(c =>
            ({ ...c.payload.doc.data() as{} ,
        })
          )
        )
      ).subscribe(data => {
        
        this.courses = data;
        this.courses.forEach(element => {
       
          this.storage.ref(element.thumbnail).getDownloadURL().toPromise().then((url)=>{
            

            element.image= url
           });
        });
       
        this.loading=false;

      })
  }

}
