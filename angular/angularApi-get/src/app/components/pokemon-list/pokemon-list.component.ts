import { Component, OnInit } from '@angular/core';
import { PokemonService } from '../../services/pokemon.service';
import { Result } from '../../modules/modules.module';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';



@Component({
  selector: 'app-pokemon-list',
  templateUrl: './pokemon-list.component.html',
  styleUrls: ['./pokemon-list.component.css']
})
export class PokemonListComponent implements OnInit{
pokemonList: Result[] = [];


constructor (private pokemonService: PokemonService,private modalService: NgbModal){}
  ngOnInit(): void {
    this.pokemonService.getPokemonList().subscribe(respuest =>{
      this.pokemonList=respuest.results;
    });
  }
  
  openModal(modal: any) {
    
    this.modalService.open(modal);
   
  }

}
