import { WebPlugin } from '@capacitor/core';

import type { PhoneCallPlugin, PhoneCallOptions, SucessCallBack} from './definitions';

export class PhoneCallWeb extends WebPlugin implements PhoneCallPlugin {
  async start(options: PhoneCallOptions): Promise<SucessCallBack> {
    console.log(options);
    return {msg: "成功"}
  }
}
