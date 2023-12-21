import { Component } from '@angular/core';
import { UserServiceService } from '../../services/user-service.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
player1!:string
player2!:string;
constructor (private user:UserServiceService){}
addUser(player1:string,player2:string) {
  this.user.createUser(player1,player2);
}

}
