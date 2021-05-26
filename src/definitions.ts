export interface PhoneCallPlugin {
  start(options: PhoneCallOptions): Promise<SucessCallBack>;
}

export interface PhoneCallOptions {
  phone: string;
}
export interface SucessCallBack {
  msg: string;
}