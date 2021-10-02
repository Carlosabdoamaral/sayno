import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AboutbannerComponent } from './aboutbanner.component';

describe('AboutbannerComponent', () => {
  let component: AboutbannerComponent;
  let fixture: ComponentFixture<AboutbannerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AboutbannerComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AboutbannerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
