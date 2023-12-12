import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { BehaviorSubject, Observable,forkJoin  } from 'rxjs';
import { MovieResponse } from '../models/movie';



import { MovieDetailsResponse } from '../models/movieDetails';


import { environment } from '../enviroments/environmet.devopments';

@Injectable({
  providedIn: 'root'
})
export class MovieService {


  constructor(private cliente: HttpClient) { }

  getMovieToHome(): Observable<MovieResponse> {
    return this.cliente.get<MovieResponse>(`${environment.baseUrlMovie}?${environment.apiKey}`)
  }

  getMovieList(page: number): Observable<MovieResponse>{
    return this.cliente.get<MovieResponse>(`${environment.baseUrlMovie}?${environment.apiKey}&page=${page}`)
  }
  getDetallesPelicula(id: number): Observable<MovieDetailsResponse>{

    return this.cliente.get<MovieDetailsResponse>(`${environment.baseUrl}/${id}?${environment.apiKey}`)
  }
 

  
  
}