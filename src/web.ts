import { WebPlugin } from '@capacitor/core';

import type { PhoneCallPlugin } from './definitions';

export class PhoneCallWeb extends WebPlugin implements PhoneCallPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
