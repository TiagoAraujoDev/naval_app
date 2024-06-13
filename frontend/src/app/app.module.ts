import { NgModule } from '@angular/core';
import { HeaderComponent } from './header/header.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { UserCardComponent } from './user-card/user-card.component';

@NgModule({
  imports: [
    BrowserModule,
    HttpClientModule,
    ReactiveFormsModule
  ],
  declarations: [
    AppComponent,
    HeaderComponent,
    DashboardComponent,
    UserCardComponent
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

