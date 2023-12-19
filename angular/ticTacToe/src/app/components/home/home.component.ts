import { Component } from '@angular/core';
import { UserServiceService } from '../../services/user-service.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
name:string = '';
constructor (private user:UserServiceService){}
addUser() {
  this.user.createUser(this.name);
}
}
