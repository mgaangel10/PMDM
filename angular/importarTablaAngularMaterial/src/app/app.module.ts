import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { TableBasicExample } from './tabla/tabla.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MaterialImportModule } from './material-import/material-import.module';

@NgModule({
  declarations: [
    AppComponent,
    TableBasicExample
  ],
  imports: [
    MaterialImportModule,
    BrowserModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
