import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { MoviieItemList } from '../models/movie';
import { Observable } from 'rxjs';
import { environment } from '../enviroments/enviroment.devolopment';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

 constructor (private cliente:HttpClient){}

 getMovieList():Observable<MoviieItemList>{
    return this.cliente.get<MoviieItemList>(`${environment.baseUrlMovie}?${environment.apiKey}`)
 }
  
}