import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Result } from './module-interface/module-interface.module';

import { PokeListResponse } from './module-interface/module-interface.module';

@Injectable({
  providedIn: 'root'
})
export class PokeServicioService {
  
  constructor(private cliente: HttpClient) { }

  getPokemonList(): Observable<PokeListResponse>{
    return this.cliente.get<PokeListResponse>('https://pokeapi.co/api/v2/pokemon');
  }
  getPokemonDetails(url: string):Observable<Result>{
    return this.cliente.get<Result>(url);
  }

}
