import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PokemItemComponent } from './pokem-item.component';

describe('PokemItemComponent', () => {
  let component: PokemItemComponent;
  let fixture: ComponentFixture<PokemItemComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PokemItemComponent]
    });
    fixture = TestBed.createComponent(PokemItemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
