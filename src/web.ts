import { WebPlugin } from '@capacitor/core';

import type { PhoneCallPlugin, CallOptions } from './definitions';

export class PhoneCallWeb extends WebPlugin implements PhoneCallPlugin {
  async call(options: CallOptions): Promise<void> {
    const { phone } = options;
    window.open(`tel:${phone}`);
  }
}
