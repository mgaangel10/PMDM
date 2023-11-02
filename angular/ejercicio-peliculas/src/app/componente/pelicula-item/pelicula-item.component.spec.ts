import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PeliculaItemComponent } from './pelicula-item.component';

describe('PeliculaItemComponent', () => {
  let component: PeliculaItemComponent;
  let fixture: ComponentFixture<PeliculaItemComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PeliculaItemComponent]
    });
    fixture = TestBed.createComponent(PeliculaItemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
