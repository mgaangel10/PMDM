import { Component, EventEmitter, OnInit,Output } from '@angular/core';
import { Pelicula } from '../../module/module-pelicula/module-pelicula.module';
import { PeliculaServicioService } from '../../services/pelicula-servicio.service';


@Component({
  selector: 'app-pelicula-list',
  templateUrl: './pelicula-list.component.html',
  styleUrls: ['./pelicula-list.component.css']
})
export class PeliculaListComponent implements OnInit{
  paginaActual=1;
  numeroPaginas: number[]= [];
  listaPeliculas: Pelicula[] = [];
  lowerPageLimit = 1;
upperPageLimit = 5;

  @Output() peliculaClick = new EventEmitter<number>();

  constructor (private peliculaService: PeliculaServicioService){}
  ngOnInit(): void {
    this.loadCharactersPage();
  }
  clickPagina(pageLoad: number){
    this.paginaActual=pageLoad;
    
    this.loadCharactersPage();
    
  }
  puntossuspensivos(): any{
    if(this.numeroPaginas.length>6){
      return true;
    }
  }
  loadCharactersPage() {
    this.peliculaService.getPeliculas(this.paginaActual).subscribe(resp => {
      this.listaPeliculas = resp.results;
      this.numeroPaginas = [];
      for (let i = 1; i <= resp.total_pages; i++) {
        this.numeroPaginas.push(i);
      }
    });
  }


  peliculaClickLista(idPelicula: number){
    this.peliculaClick.emit(idPelicula);
  }


}
