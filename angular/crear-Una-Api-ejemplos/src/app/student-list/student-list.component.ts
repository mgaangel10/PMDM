import { Component } from '@angular/core';
import { Student } from 'src/app/models/models.module';


const Students: Student[]:[
  {
     id: '1',
  name: 'ANgel',
  lastname: 'perez',
  sex: 'hombre',
  age: 19,
  subjects{
    id: '1',
    
    hours:13
  }
 
  }

]
  


@Component({
  selector: 'app-student-list',
  templateUrl: './student-list.component.html',
  styleUrls: ['./student-list.component.css']
})
export class StudentListComponent {

}
