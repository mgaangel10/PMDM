import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { PeliculaItemComponent } from './componente/pelicula-item/pelicula-item.component';
import { PeliculaListComponent } from './componente/pelicula-list/pelicula-list.component';

@NgModule({
  declarations: [
    AppComponent,
    PeliculaItemComponent,
    PeliculaListComponent
  ],
  imports: [
    BrowserModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
