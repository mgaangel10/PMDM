import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ListaComponent } from './components/lista/lista.component';
import { PageListComponent } from './ui/page-list/page-list.component';
import { ListFilmsComponent } from './components/list-films/list-films.component';

const routes: Routes = [
  {path: '',component:ListFilmsComponent},
  {path: 'inicio',component:ListFilmsComponent},
  {path: 'lista/:id',component:PageListComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
