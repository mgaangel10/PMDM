import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { Result } from '../../models/movie-interfaze';
import { MovieService } from '../../service/movie';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-list-films',
  templateUrl: './list-films.component.html',
  styleUrl: './list-films.component.css'
})
export class ListFilmsComponent implements OnInit{
 
 peliculaList : Result [] = []
 @Output() peliculaClick = new EventEmitter<number>();
 paginaActual: number = 1;
 NumeroDePaginas!: number;
 constructor (private movieService: MovieService,private router: Router, private route: ActivatedRoute) {}
 ngOnInit(): void {
  this.movieService.getMovieList(this.paginaActual).subscribe(response =>{
    this.peliculaList=response.results;
    this.NumeroDePaginas=response.total_pages;
  });
}
peliculaClickLista(idPelicula: number){
  this.peliculaClick.emit(idPelicula);
}
}
