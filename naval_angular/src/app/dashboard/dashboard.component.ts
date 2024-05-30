import { Component, OnInit } from '@angular/core';
import { UsersService } from '../users.service';
import { User } from '../../@types/User';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrl: './dashboard.component.css'
})
export class DashboardComponent implements OnInit {
  constructor(private usersService: UsersService) {}

  users!: User[];

  ngOnInit(): void {
    this.usersService.getAllusers().subscribe((response) => {
      this.users = response;
    });
  }
}
