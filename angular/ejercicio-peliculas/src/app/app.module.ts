import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { PeliculaItemComponent } from './componente/pelicula-item/pelicula-item.component';
import { PeliculaListComponent } from './componente/pelicula-list/pelicula-list.component';
import { PageHomeComponent } from './ui/page-home/page-home.component';
import { AppRoutingModule } from './app-routing.module';
import { PeliculaDetailsComponent } from './componente/pelicula-details/pelicula-details.component';



@NgModule({
  declarations: [
    AppComponent,
    PeliculaItemComponent,
    PeliculaListComponent,
    PageHomeComponent,
    PeliculaDetailsComponent,
    
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
