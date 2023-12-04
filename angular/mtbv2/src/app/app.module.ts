import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import{HttpClientModule} from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ItemFilmsComponent } from './components/item-films/item-films.component';
import { ListFilmsComponent } from './components/list-films/list-films.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { ListaComponent } from './components/lista/lista.component';
import { PageListComponent } from './ui/page-list/page-list.component';

@NgModule({
  declarations: [
    AppComponent,
    ItemFilmsComponent,
    ListFilmsComponent,
    ListaComponent,
    PageListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
