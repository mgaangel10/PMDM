import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { provideAuth, getAuth } from '@angular/fire/auth';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { AuthService } from './auth.service';
import { AngularFireDatabaseModule } from '@angular/fire/compat/database';

import { AngularFireModule } from '@angular/fire/compat';
import { environment } from '../environments/environment';
import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    
  ],
  imports: [
    BrowserModule,
    provideAuth(() => {
      const auth = getAuth();
      
      return auth;
    }),
    AngularFireModule.initializeApp(environment.firebaseConfig),
    AppRoutingModule,
    AngularFireDatabaseModule,
    NgbModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
