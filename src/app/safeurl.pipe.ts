import { Pipe, PipeTransform, ɵSafeResourceUrl } from '@angular/core';
import { DomSanitizer, SafeResourceUrl} from '@angular/platform-browser';
@Pipe({
  name: 'safeurl'
})
export class SafeurlPipe implements PipeTransform {
  constructor(private sanitizer: DomSanitizer) {}
  transform(str: string): SafeResourceUrl  {
    return this.sanitizer.bypassSecurityTrustResourceUrl(str);
  }

}
