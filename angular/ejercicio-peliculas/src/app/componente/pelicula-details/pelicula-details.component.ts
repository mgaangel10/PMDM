import { Component, OnInit,Input } from '@angular/core';
import { PeliculaServicioService } from '../../services/pelicula-servicio.service';
import { Pelicula, PeliculaListResponse } from '../../module/module-pelicula/module-pelicula.module';
import { ActivatedRoute } from '@angular/router';
import { PeliculaDetailsResponse } from 'src/app/module/module-pelicula/module-peliculaTopRated';

@Component({
  selector: 'app-pelicula-details',
  templateUrl: './pelicula-details.component.html',
  styleUrls: ['./pelicula-details.component.css']
})
export class PeliculaDetailsComponent implements OnInit{
  id!: string|null;
  peli!: PeliculaDetailsResponse;
  constructor(private route: ActivatedRoute,private peliService: PeliculaServicioService){}
  ngOnInit(): void {
    this.id=this.route.snapshot.paramMap.get('id');
    if(this.id!=null){
      this.peliService.getDetallesPeliculas(this.id).subscribe(response=>{
        this.peli=response;
      })
    }
  }
 






}
