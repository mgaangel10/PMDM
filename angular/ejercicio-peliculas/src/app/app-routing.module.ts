import { RouterModule, Routes } from '@angular/router';
import { NgModule } from '@angular/core';
import { PeliculaListComponent } from './componente/pelicula-list/pelicula-list.component';

const routes: Routes = [
    {path: 'inicio', component: PeliculaListComponent}
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
  })
  export class AppRoutingModule { }