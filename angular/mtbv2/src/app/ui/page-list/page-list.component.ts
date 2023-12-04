import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { MovieDetailsResponse } from '../../models/details';
import { MovieService } from '../../service/movie';

@Component({
  selector: 'app-page-list',
  templateUrl: './page-list.component.html',
  styleUrl: './page-list.component.css'
})
export class PageListComponent {
  id!: string|null;
  peli!: MovieDetailsResponse;
  constructor(private route: ActivatedRoute,private peliService: MovieService){}
  ngOnInit(): void {
    this.id=this.route.snapshot.paramMap.get('id');
    if(this.id!=null){
      this.peliService.getDetallesPelicula1(this.id).subscribe(response=>{
        this.peli=response;
      })
    }
  }



}
