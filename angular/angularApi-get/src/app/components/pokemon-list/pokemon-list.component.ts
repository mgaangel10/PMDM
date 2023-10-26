import { Component, OnInit } from '@angular/core';
import { PokemonService } from '../../services/pokemon.service';
import {  Result } from '../../modules/modules.module';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { NgbPaginationModule } from '@ng-bootstrap/ng-bootstrap';






@Component({
  selector: 'app-pokemon-list',
  templateUrl: './pokemon-list.component.html',
  styleUrls: ['./pokemon-list.component.css']
})
export class PokemonListComponent implements OnInit{



page=2;
pokemonList: Result[] = [];
poke!:Result;

constructor (private pokemonService: PokemonService,private modalService: NgbModal){}
  ngOnInit(): void {
    this.pokemonService.getPokemonList().subscribe(respuest =>{
      this.pokemonList=respuest.results;
      
    });
  }
  
  reloadPage() {
    this.pokemonService.getPokemonPage(this.page * 20).subscribe(resp => {
      this.pokemonList = resp.results;
    });
  }
  
  openModal(pokemodal: any,url: string) {
    this.pokemonService.getPokemonDetails(url).subscribe(resp=>{
      this.poke=resp;
      this.modalService.open(pokemodal);
    }) 
  }

}
