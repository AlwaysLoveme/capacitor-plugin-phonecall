import { registerPlugin } from '@capacitor/core';

import type { PhoneCallPlugin } from './definitions';

const PhoneCall = registerPlugin<PhoneCallPlugin>('PhoneCall', {
  web: () => import('./web').then(m => new m.PhoneCallWeb()),
});

export * from './definitions';
export { PhoneCall };
