import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CourseviewComponent } from './courseview.component';

describe('CourseviewComponent', () => {
  let component: CourseviewComponent;
  let fixture: ComponentFixture<CourseviewComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CourseviewComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CourseviewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
