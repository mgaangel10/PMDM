import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ItemFilmsComponent } from './item-films.component';

describe('ItemFilmsComponent', () => {
  let component: ItemFilmsComponent;
  let fixture: ComponentFixture<ItemFilmsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ItemFilmsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(ItemFilmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
