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
    return this.httpClient.get<User[]>("https://g0g1e6xi75.execute-api.us-east-1.amazonaws.com/navalport-serverless/users");
  }
}
