import { Injectable } from '@angular/core';
import { AngularFireAuth } from '@angular/fire/compat/auth';
import { map } from 'rxjs';
import { GoogleAuthProvider } from 'firebase/auth';
import { AngularFireDatabase } from '@angular/fire/compat/database';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  email='';
  password='';
  constructor(public auth: AngularFireAuth,private db:AngularFireDatabase) { }
  user = this.auth.authState.pipe(map(authState => {
    console.log('authState: ', authState)
    if (authState) {
      
      return authState;
    } else {
      return null;
    }
  }))

  login() {
    console.log('login!');
    this.auth.signInWithEmailAndPassword(this.email,this.password)
    .then(user=>{
      console.log('user logado',user)
      this.updateUserData(user.user);
    })
    .catch(error=>{
      console.log('error login',error)
    })
  }

  glogin() {
    console.log('google login!');
    this.auth.signInWithPopup(new GoogleAuthProvider())
    .then(user=>{
      console.log('user logado',user)
      this.updateUserData(user.user);
    })
    .catch(error=>{
      console.log('error login',error)
    })
  }

  logout() {
    console.log('logout');
    this.auth.signOut();
  }
  updateUserData(user:any){
    console.log('user',user);
    const path =  'users/'
    const u = {
      email:user.email
    }
    this.db.object(path).update(u).catch(error=> console.log(error));

    }


}
