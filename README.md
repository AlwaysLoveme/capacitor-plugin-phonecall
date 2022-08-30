# capacitor-plugin-phone-call
<p align="left">
<a href="https://img.shields.io/badge/support-Android-516BEB?logo=android&logoColor=white&style=plastic">
<img src="https://img.shields.io/badge/support-Android-516BEB?style=plastic"/>
</a>
<a href="https://img.shields.io/badge/support-Android-516BEB?logo=android&logoColor=white&style=plastic">
<img src="https://img.shields.io/badge/support-IOS-516BEB?style=plastic"/>
</a>
<a href="https://www.npmjs.com/package/capacitor-plugin-phone-call">
<img src="https://img.shields.io/npm/v/capacitor-plugin-phone-call/latest.svg"/>
</a>
<a href="https://www.npmjs.com/package/capacitor-plugin-phone-call">
<img src="https://img.shields.io/npm/dm/capacitor-plugin-phone-call.svg"/>
</a>
</p>

a phone call plugin for Capacitor3, apply for IOS/Android

## Install

```bash
npm install capacitor-plugin-phone-call
npx cap sync
```
eg:
```typescript
import { PhoneCall } from "capacitor-plugin-phone-call";

PhoneCall.start({ phone: "10086" });

···
```
## API

<docgen-index>

* [`start(...)`](#start)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### start(...)

```typescript
start(options: PhoneCallOptions) => any
```

| Param         | Type                                                          |
| ------------- | ------------------------------------------------------------- |
| **`options`** | <code><a href="#phonecalloptions">PhoneCallOptions</a></code> |

**Returns:** <code>any</code>

--------------------


### Interfaces


#### PhoneCallOptions

| Prop        | Type                |
| ----------- | ------------------- |
| **`phone`** | <code>string</code> |


#### SucessCallBack

| Prop      | Type                |
| --------- | ------------------- |
| **`msg`** | <code>string</code> |

</docgen-api>
