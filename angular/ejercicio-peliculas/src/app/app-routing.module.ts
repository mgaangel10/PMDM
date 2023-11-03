import { RouterModule, Routes } from '@angular/router';
import { NgModule } from '@angular/core';

import { PageHomeComponent } from './ui/page-home/page-home.component';
import { PeliculaDetailsComponent } from './componente/pelicula-details/pelicula-details.component';

const routes: Routes = [
    {path: '', component: PageHomeComponent},
    {path: 'inicio', component: PageHomeComponent},
    {path: 'pelicula/:id', component: PeliculaDetailsComponent}
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
  })
  export class AppRoutingModule { }