import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SearchviewComponent } from './searchview.component';

describe('SearchviewComponent', () => {
  let component: SearchviewComponent;
  let fixture: ComponentFixture<SearchviewComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SearchviewComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SearchviewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
