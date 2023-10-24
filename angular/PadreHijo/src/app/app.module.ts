import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';


import { PlanteListComponent } from './componente/plante-list/plante-list.component';
import { PlanetItemsComponent } from './componente/planet-items/planet-items.component';

@NgModule({
  declarations: [
    AppComponent,
    PlanteListComponent,
    PlanetItemsComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
