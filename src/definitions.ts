export interface PhoneCallPlugin {
  call(options: CallOptions): Promise<void>;
}

export interface CallOptions {
  phone: string;
}