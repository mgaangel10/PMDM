import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { PokemonList } from '../modules/modules.module';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PokemonService {

  constructor(private cliente: HttpClient) { }

  getPokemonList(): Observable<PokemonList>{
    return this.cliente.get<PokemonList>('https://pokeapi.co/api/v2/pokemon');
  }


}
