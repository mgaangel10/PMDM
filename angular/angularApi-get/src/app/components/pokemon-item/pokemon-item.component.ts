import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Result } from '../../modules/modules.module';

@Component({
  selector: 'app-pokemon-item',
  templateUrl: './pokemon-item.component.html',
  styleUrls: ['./pokemon-item.component.css']
})
export class PokemonItemComponent {
  @Input() poke!: Result;
  @Output() pokeClic = new  EventEmitter<String>(); 

  imagenPokemon(){
  const URLIMG = this.poke.url.split('/').reverse()[1];
  return  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"+URLIMG+".png";
  }

  detallesPokemon(){
    this.pokeClic.emit(this.poke.name);
  }

}
