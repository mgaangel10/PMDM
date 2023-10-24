import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PlanetItemsComponent } from './planet-items.component';

describe('PlanetItemsComponent', () => {
  let component: PlanetItemsComponent;
  let fixture: ComponentFixture<PlanetItemsComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PlanetItemsComponent]
    });
    fixture = TestBed.createComponent(PlanetItemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
