import { Component, EventEmitter, OnInit,Output } from '@angular/core';
import { Pelicula } from 'src/app/module/module-pelicula/module-pelicula.module';
import { PeliculaServicioService } from 'src/app/services/pelicula-servicio.service';

@Component({
  selector: 'app-pelicula-list',
  templateUrl: './pelicula-list.component.html',
  styleUrls: ['./pelicula-list.component.css']
})
export class PeliculaListComponent implements OnInit{

  listaPeliculas: Pelicula[] = [];
  @Output() peliculaClick = new EventEmitter<number>()
  constructor (private peliculaService: PeliculaServicioService){}
  ngOnInit(): void {
    this.peliculaService.getPeliculas().subscribe(respuesta =>{
      this.listaPeliculas=respuesta.results;
    })
  }

  peliculaClickLista(idPelicula: number){
    this.peliculaClick.emit(idPelicula);
  }


}
