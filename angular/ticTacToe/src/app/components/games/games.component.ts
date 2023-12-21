import { Component, OnInit } from '@angular/core';

import { QuerySnapshot, onSnapshot } from '@angular/fire/firestore';
import { UserServiceService } from '../../services/user-service.service';
@Component({
  selector: 'app-games',
  templateUrl: './games.component.html',
  styleUrl: './games.component.css'
})
export class GamesComponent implements OnInit{
  constructor (private games:UserServiceService){}
player2 !: string;
  ngOnInit(): void {
   const query  = this.games.getEmptyGame();
   const unSubscribe = onSnapshot(query,(QuerySnapshot)=>{
    const game: string[] = [];
    QuerySnapshot.forEach((doc)=>{
      game.push(doc.id);
    });
    if(game.length === 0){
      
      this.player2 ==null
      console.log("partidas encontrada",game.join(', '))
    }else{
        console.log("partida no encontrada",game.join(', '))
    }
   });
  }


}
