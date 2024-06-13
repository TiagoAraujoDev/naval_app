import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { AppModule } from './app/app.module';

platformBrowserDynamic().bootstrapModule(AppModule)
  .catch((err) => console.error(err));

const name = function() {
  return "Hello Tiago!";
};

const init = () => {
  return "app is running";
};
