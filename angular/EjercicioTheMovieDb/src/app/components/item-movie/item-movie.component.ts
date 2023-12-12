import { Component } from '@angular/core';
import { MoviieItemList } from '../../models/movie';

@Component({
  selector: 'app-item-movie',
  standalone: true,
  imports: [],
  templateUrl: './item-movie.component.html',
  styleUrl: './item-movie.component.css'
})
export class ItemMovieComponent {
  movie!:MoviieItemList;

}
