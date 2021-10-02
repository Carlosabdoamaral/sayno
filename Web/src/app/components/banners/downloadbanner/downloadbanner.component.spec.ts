import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DownloadbannerComponent } from './downloadbanner.component';

describe('DownloadbannerComponent', () => {
  let component: DownloadbannerComponent;
  let fixture: ComponentFixture<DownloadbannerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DownloadbannerComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DownloadbannerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
