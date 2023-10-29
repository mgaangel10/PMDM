import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Result } from '../../module-interface/module-interface.module';

@Component({
  selector: 'app-pokem-item',
  templateUrl: './pokem-item.component.html',
  styleUrls: ['./pokem-item.component.css']
})
export class PokemItemComponent {

  @Input() poke!: Result;
  @Output() pokeClic = new  EventEmitter<string>(); 
  imagenPokemon(){
    const URLIMG = this.poke.url.split('/').reverse()[1];
    return  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"+URLIMG+".png";
    }

    detallesPokemon(){
      this.pokeClic.emit(this.poke.url);
     
    }

}
