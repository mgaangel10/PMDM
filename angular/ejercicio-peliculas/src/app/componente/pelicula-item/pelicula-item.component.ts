import { Component,EventEmitter,Input,Output } from '@angular/core';
import { Pelicula } from '../../module/module-pelicula/module-pelicula.module';


@Component({
  selector: 'app-pelicula-item',
  templateUrl: './pelicula-item.component.html',
  styleUrls: ['./pelicula-item.component.css']
})
export class PeliculaItemComponent {
  @Input() pelicula!: Pelicula;
  @Output() peliculaClick = new EventEmitter<number>();

  clickDetalles(){
    this.peliculaClick.emit(this.pelicula?.id);
  }

}
