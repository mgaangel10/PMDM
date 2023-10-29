import { Component, OnInit } from '@angular/core';
import { Result } from '../../module-interface/module-interface.module';
import { PokeServicioService } from '../../poke-servicio.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { FormControl, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { Observable, map, startWith } from 'rxjs';


@Component({
  selector: 'app-poke-list',
  templateUrl: './poke-list.component.html',
  styleUrls: ['./poke-list.component.css'],
  
})
export class PokeListComponent implements OnInit {
  pokeList: Result[]=[];
  myControl = new FormControl('');
  options: string[] = ['hiedra'];
  filteredOptions!: Observable<string[]>
  poke!:Result;
  constructor(private pokeservice: PokeServicioService,private modalService: NgbModal){}

  ngOnInit(): void {
    this.pokeservice.getPokemonList().subscribe(respuest =>{
      this.pokeList=respuest.results;
    });
    this.filteredOptions = this.myControl.valueChanges.pipe(
      startWith(''),
      map(value => this._filter(value || '')),
    );

    
  }
  private _filter(value: string): string[] {
    const filterValue = value.toLowerCase();

    return this.options.filter(option => option.toLowerCase().includes(filterValue));
  }
  openModal(pokemodal: any,url: string) {
    this.pokeservice.getPokemonDetails(url).subscribe(resp=>{
      this.poke=resp;
      this.modalService.open(pokemodal);
    }) 
  }

  
}
