import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { PeliculaItemComponent } from './componente/pelicula-item/pelicula-item.component';
import { PeliculaListComponent } from './componente/pelicula-list/pelicula-list.component';
import { PageHomeComponent } from './ui/page-home/page-home.component';


@NgModule({
  declarations: [
    AppComponent,
    PeliculaItemComponent,
    PeliculaListComponent,
    PageHomeComponent,
    
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
