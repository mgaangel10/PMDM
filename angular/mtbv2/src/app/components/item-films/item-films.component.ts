import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { MovieService } from '../../service/movie';
import { Result } from '../../models/movie-interfaze';
import { MovieDetailsResponse } from '../../models/details';
@Component({
  selector: 'app-item-films',
  templateUrl: './item-films.component.html',
  styleUrl: './item-films.component.css'
})
export class ItemFilmsComponent implements OnInit {

 @Input() Movie !:Result;
 @Output() peliculaClick = new EventEmitter<number>();
 movieDetails!:MovieDetailsResponse
constructor (private MovieService: MovieService){}
ngOnInit(): void {
  this.getMovieDetails(this.Movie.id);
}
getMovieDetails(id:number):void{
  this.MovieService.getAllMovie(id).subscribe(response=>{
    this.movieDetails = response;
  })
}
clickDetalles(){
  this.peliculaClick.emit(this.Movie?.id);
}


}
