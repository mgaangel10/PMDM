import { Component } from '@angular/core';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent {

   nombre:string="";
   apellidos:string="";
   nif:string="";
   telefono:number=0;
   hombre:number=0;
   mujer:string=""
   amigo:string=""
   buscando:string=""
   otro:string=""
  profesor:string=""
  contra:string=""
  repeatContra:string=""
   getResultado(){
    if(this.contra===this.repeatContra){
      return console.log(this.nombre,this.apellidos,this.nif,this.telefono,this.profesor,this.amigo,this.buscando,this.hombre)
    }
    
   }
   

}
