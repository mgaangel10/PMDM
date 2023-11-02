import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { PeliculaListResponse } from '../module/module-pelicula/module-pelicula.module';
import { environment } from '../enviroments/enviroment';
const MOVIE_BASE_URL = 'movie';

@Injectable({
  providedIn: 'root'
})
export class PeliculaServicioService {

  constructor(private cliente:HttpClient) { }

  getPeliculas():Observable<PeliculaListResponse>{
    return this.cliente.get<PeliculaListResponse>(`${environment.apiBaseUrl}/${MOVIE_BASE_URL}/popular/?api_key=${environment.apiKey}`);  
  }
}
