import { Component, Input } from '@angular/core';
import { Result } from 'src/app/modules/modules.module';

@Component({
  selector: 'app-planet-items',
  templateUrl: './planet-items.component.html',
  styleUrls: ['./planet-items.component.css']
})
export class PlanetItemsComponent {
@Input() star!: Result;
}
