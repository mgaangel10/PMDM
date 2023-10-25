import { Component, OnInit } from '@angular/core';
import { Result } from 'src/app/modules/modules.module';
import { PokemonService } from 'src/app/services/pokemon.service';


@Component({
  selector: 'app-pokemon-list',
  templateUrl: './pokemon-list.component.html',
  styleUrls: ['./pokemon-list.component.css']
})
export class PokemonListComponent implements OnInit{
pokemonList: Result[] = [];



constructor (private pokemonService: PokemonService){}
  ngOnInit(): void {
    this.pokemonService.getPokemonList().subscribe(respuest =>{
      this.pokemonList=respuest.results;
    });
  }
}
