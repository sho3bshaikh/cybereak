import { Pipe, PipeTransform } from '@angular/core';
import Autolinker, { AutolinkerConfig } from 'autolinker';

@Pipe({name: 'linkify'})
export class LinkifyPipe implements PipeTransform {
  transform(str: string): string {
    return str ? Autolinker.link(str, {
      truncate: 25, 
      newWindow: true 
    }) : str;
  }
}