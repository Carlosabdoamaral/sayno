import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ContactbannerComponent } from './contactbanner.component';

describe('ContactbannerComponent', () => {
  let component: ContactbannerComponent;
  let fixture: ComponentFixture<ContactbannerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ContactbannerComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ContactbannerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
