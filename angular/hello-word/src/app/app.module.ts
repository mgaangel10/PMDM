import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { LogginScrenComponent } from './loggin-scren/loggin-scren.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { CardRestauranteComponent } from './card-restaurante/card-restaurante.component';

@NgModule({
  declarations: [
    AppComponent,
    LogginScrenComponent,
    CardRestauranteComponent
  ],
  imports: [
    BrowserModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
