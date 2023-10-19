export interface Student{
  id: string;
  name: string;
  lastname: string;
  sex: string;
  age: number;
  subjects: schoolSubjects[];
}

export interface schoolSubjects{
  id: string;
  hours: string;
}
