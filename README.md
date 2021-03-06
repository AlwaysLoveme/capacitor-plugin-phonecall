# capacitor-plugin-phone-call

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

ยทยทยท
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
