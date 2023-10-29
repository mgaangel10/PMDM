import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { PokeServicioService } from './poke-servicio.service';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PokemItemComponent } from './components/pokem-item/pokem-item.component';
import { PokeListComponent } from './components/poke-list/poke-list.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatAutocompleteModule } from '@angular/material/autocomplete';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { ReactiveFormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    PokemItemComponent,
    PokeListComponent
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    HttpClientModule,
    NgbModule,
    MatAutocompleteModule,
    MatFormFieldModule,
    MatInputModule,
    ReactiveFormsModule
  ],
  providers: [PokeServicioService],
  bootstrap: [AppComponent]
})
export class AppModule { }
