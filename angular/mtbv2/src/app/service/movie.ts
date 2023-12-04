import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { MoviItemResponse } from '../models/movie-interfaze';
import { Observable } from 'rxjs';
import { environment } from '../../enviroments/environments';
import { MovieDetailsResponse } from '../models/details';
@Injectable({
  providedIn: 'root'
})
export class MovieService {

  
  constructor(private cliente: HttpClient) { }

    getAllMovie(id:number):Observable<MovieDetailsResponse>{
        return this.cliente.get<MovieDetailsResponse>(`${environment.baseUrlMovie}/${id}?${environment.apiKey}`)
    }
    getMovieList(page: number): Observable<MoviItemResponse>{
        return this.cliente.get<MoviItemResponse>(`${environment.baseUrlMovie}?${environment.apiKey}&page=${page}`)
      }
      getDetallesPelicula1(id: string): Observable<MovieDetailsResponse>{
        return this.cliente.get<MovieDetailsResponse>(`${environment.baseUrlMovie}/${id}?${environment.apiKey}`)
    
        
      }
  
}