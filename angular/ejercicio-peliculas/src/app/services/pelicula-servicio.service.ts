import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { PeliculaListResponse } from '../module/module-pelicula/module-pelicula.module';
import { environment } from '../enviroments/enviroment';
import { PeliculaDetailsResponse } from '../module/module-pelicula/module-peliculaTopRated';
const MOVIE_BASE_URL = 'movie';

@Injectable({
  providedIn: 'root'
})
export class PeliculaServicioService {


  //https://api.themoviedb.org/3/movie/{movie_id}

  constructor(private cliente:HttpClient) { }

  getPeliculas(page: number): Observable<PeliculaListResponse> {
    return this.cliente.get<PeliculaListResponse>(`${environment.apiBaseUrl}/${MOVIE_BASE_URL}/popular?api_key=${environment.apiKey}&page=${page}`);  
}
getDetallesPeliculas(id: string): Observable<PeliculaDetailsResponse> {
  return this.cliente.get<PeliculaDetailsResponse>(`${environment.apiBaseUrl}/${MOVIE_BASE_URL}/${id}?api_key=${environment.apiKey}`);
}

}
