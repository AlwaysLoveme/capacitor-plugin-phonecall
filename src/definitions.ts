export interface PhoneCallPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
