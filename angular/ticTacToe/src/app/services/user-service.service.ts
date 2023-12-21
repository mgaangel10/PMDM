import { Injectable } from '@angular/core';
import {
  Firestore,
  addDoc,
  collection,
  getDocs,
  query,
  where,
  onSnapshot,
} from '@angular/fire/firestore';

const COLLECTION_USERS = 'game';
const COLLECTION_GAMES = 'game';

@Injectable({
  providedIn: 'root'
})
export class UserServiceService {

  constructor(public firestore: Firestore) {}

  async createUser(player1: string,player2:string) {
    const docRef = await addDoc(collection(this.firestore, COLLECTION_USERS), {
      player1: player1,
      player2:null
      
    });
    console.log('Document written with ID: ', docRef.id);
  }

  getUsers() {}
  getEmptyGame() {
    return query(
      collection(this.firestore, COLLECTION_GAMES),
      where('player2', '==', 'null')
    );
  }

  
}
