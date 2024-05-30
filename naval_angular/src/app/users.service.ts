import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { User } from '../@types/User';

@Injectable({
  providedIn: 'root'
})
export class UsersService {
  constructor(private httpClient: HttpClient) { }

  getAllusers(): Observable<User[]> {
    return this.httpClient.get<User[]>("http://localhost:8000/users");
  }
}
